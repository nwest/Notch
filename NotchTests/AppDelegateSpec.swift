import Quick
import Nimble

class AppDelegateSpec: QuickSpec {
    override func spec() {
        describe("a BDD style test in Swift") {
            it("works!") {
                let isThisWorking = true
                expect(isThisWorking).to(beTruthy())
            }
        }
    }
}
