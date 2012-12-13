package com.amcsoft.model.party

import org.springframework.dao.DataIntegrityViolationException

/**
 * Party_CustomerController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class Party_CustomerController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [party_CustomerInstanceList: Party_Customer.list(params), party_CustomerInstanceTotal: Party_Customer.count()]
    }

    def create() {
		def externalId = nextExternalId();
		params.externalId = externalId
		
		def partyCustomer = new Party_Customer(params)
		def address = partyCustomer.createAddress()
		
        [party_CustomerInstance: partyCustomer, addressInstance : address]
    }

	private String nextExternalId() {
		def c = Party_Customer.createCriteria()
		def rowCount = c.get {
			projections {
				rowCount()
			}
		}

		def externalId = String.format("%07d", rowCount+1)
		return externalId
	}

    def save() {
        def party_CustomerInstance = new Party_Customer(params)
		
		//Validation
		def partyByCustomerCode = Party_Customer.findByCustomerCode(party_CustomerInstance.customerCode)
		if(partyByCustomerCode) {
			flash.message = message(code: 'party.alreadyExistsByCustomerCode.message', args: [party_CustomerInstance.customerCode])
			render(view: "create", model: [party_CustomerInstance: party_CustomerInstance])
			return
		}
		
		//Address
		def addressInstance = new Address(params)
		
		addressInstance.attnName = party_CustomerInstance.customerName
		addressInstance.toName = party_CustomerInstance.customerName
		party_CustomerInstance.addAddress(addressInstance)
		
		if (!party_CustomerInstance.save(flush: true)) {
			render(view: "create", model: [party_CustomerInstance: party_CustomerInstance, addressInstance : addressInstance])
			return
		}

		/*if (!addressInstance.save(flush: true)) {
			render view: 'create', model: [party_CustomerInstance: party_CustomerInstance, addressInstance : addressInstance]
			return
		}*/

		flash.message = message(code: 'default.created.message', args: [message(code: 'party_Customer.label', default: 'Party_Customer'), party_CustomerInstance.partyId])
        redirect(action: "show", id: party_CustomerInstance.partyId)
    }

    def show() {
        def party_CustomerInstance = Party_Customer.get(params.id)
        if (!party_CustomerInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'party_Customer.label', default: 'Party_Customer'), params.id])
            redirect(action: "list")
            return
        }

        [party_CustomerInstance: party_CustomerInstance]
    }

    def edit() {
        def party_CustomerInstance = Party_Customer.get(params.id)
        if (!party_CustomerInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'party_Customer.label', default: 'Party_Customer'), params.id])
            redirect(action: "list")
            return
        }

        [party_CustomerInstance: party_CustomerInstance]
    }

    def update() {
        def party_CustomerInstance = Party_Customer.get(params.id)
        if (!party_CustomerInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'party_Customer.label', default: 'Party_Customer'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (party_CustomerInstance.version > version) {
                party_CustomerInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'party_Customer.label', default: 'Party_Customer')] as Object[],
                          "Another user has updated this Party_Customer while you were editing")
                render(view: "edit", model: [party_CustomerInstance: party_CustomerInstance])
                return
            }
        }

        party_CustomerInstance.properties = params

        if (!party_CustomerInstance.save(flush: true)) {
            render(view: "edit", model: [party_CustomerInstance: party_CustomerInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'party_Customer.label', default: 'Party_Customer'), party_CustomerInstance.partyId])
        redirect(action: "show", id: party_CustomerInstance.partyId)
    }

    def delete() {
        def party_CustomerInstance = Party_Customer.get(params.id)
        if (!party_CustomerInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'party_Customer.label', default: 'Party_Customer'), params.id])
            redirect(action: "list")
            return
        }

        try {
            party_CustomerInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'party_Customer.label', default: 'Party_Customer'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'party_Customer.label', default: 'Party_Customer'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
