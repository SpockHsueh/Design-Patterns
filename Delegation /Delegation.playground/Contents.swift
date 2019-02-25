/*:
 # Delegate pattern
 Code example
 
 */

import UIKit

public protocol MenuViewControllerDelegate: AnyObject {
    func menuViewController(_ menuViewController: MenuViewController, didSelectitemAtIndex index: Int)
}

// MARK: - Controller
public class MenuViewController: UIViewController {
    @IBOutlet public var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
        }
    }
    public weak var delegate: MenuViewControllerDelegate?
    private let items = ["Item1", "Item2", "Item3"]
}

// MARK: - UITableViewDataSource
extension MenuViewController: UITableViewDataSource {
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
}

// MARK: - UITableViewDelegate
extension MenuViewController: UITableViewDelegate {
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // TODO
        delegate?.menuViewController(self, didSelectitemAtIndex: indexPath.row)
    }
}







