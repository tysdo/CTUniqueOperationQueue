Pod::Spec.new do |s|
  s.name         = "CTUniqueOperationQueue"
  s.version      = "1.0.0"
  s.summary      = "Avoid doing duplicate work in your NSOperationQueue's"

  s.description  = <<-DESC
		NSOperationQueue's are incredibly useful but they make it really easy to queue up duplicate operations. For 
		example, if the user scrolls past a UITableViewCell multiple times and the cell requires work to be done, 
		you'll quickly queue up duplicate operations. Or if the user enters a UIViewController multiple times and 
		you kick off work, you'll have duplicate operations.

		Currently, to avoid duplicate operations you need to do manual bookkeeping. CTUniqueOperationQueue makes
		this easy by adding methods which take an unique operation id. There is also a handy method for cancelling 
		operations by id as well.
  DESC

  s.homepage     = "https://github.com/tysdo/CTUniqueOperationQueue"
  s.license      = { :type => "BSD", :file => "LICENSE.txt" }

  s.author    = "Matt Ronge"

  s.platform     = :ios, "5.0"

  s.source       = { :git => "https://github.com/tysdo/CTUniqueOperationQueue.git", :tag => "1.0.0" }

  s.source_files  = "*.{h,m}"
  s.exclude_files = "CTUniqueOperationQueueTests, CTUniqueOperationQueueTests.xcodeproj"

  s.requires_arc = true
end
