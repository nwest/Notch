import Quick
import Nimble

class AppDelegateSpec: QuickSpec {
    override func spec() {
        describe("AppDelegate") {
            var appDelegate: AppDelegate!
            
            beforeEach {
                appDelegate = AppDelegate()
            }
            
            it("has an Application Documents Directory") {
                expect(appDelegate.applicationDocumentsDirectory).toNot(beNil())
            }
            
            it("has a Managed Object Model") {
                expect(appDelegate.managedObjectContext).toNot(beNil())
            }
            
            it("has a Persistent Store Coordinator") {
                expect(appDelegate.persistentStoreCoordinator).toNot(beNil())
            }
            
            it("allows you to save the context") {
                expect {
                    appDelegate.respondsToSelector(Selector("saveContext")) as Bool!
                }.to(beTruthy())
            }
        }
    }
}
