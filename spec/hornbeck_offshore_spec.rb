require 'spec_helper'

describe HornbeckOffshore::Job do

  def read_fixture(name)
    File.read(File.dirname(__FILE__) + "/fixtures/#{name}").chomp.gsub(/\n/, "\r\n")
  end

  describe '.all' do
    use_vcr_cassette

    it 'returns a list of jobs' do
      jobs = HornbeckOffshore::Job.all

      jobs.size.should == 25
      job = jobs.first

      job.title.should == 'Accounts Payable Clerk'
      job.location.should == 'Headquarters'
      job.url.should == 'https://tbe.taleo.net/NA9/ats/careers/requisition.jsp?org=HOS&cws=1&rid=103'
      job.id.should == '103'
      job.description.should == "<tr><td colspan=\"2\">\n<div><b><font size=\"6\"><b><span style=\"font-size: 10pt\">FLSA Status:&nbsp;NON-EXEMPT</span></b></font></b></div>\n<div align=\"center\"><b><font size=\"6\"><b>&nbsp;</b></font></b></div>\n<div style=\"margin: 0in 0in 0pt 0.5in\"><b><font size=\"5\"><span><font size=\"2\">I.</font><span style=\"font: 7pt 'Times New Roman'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><font size=\"2\">SUMMARY DESCRIPTION</font></font></b></div>\n<div style=\"margin: 0in 0in 0pt 0.5in\"><font size=\"2\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The Accounts Payable Clerk is responsible for processing transactions for the liabilities of Hornbeck Offshore Services, Inc. and subsidiaries.&nbsp;These liabilities includes, but is not limited to, accounts payable, notes payable, accrued and other liabilities. This position performs accounting activities such as maintenance of the general ledger and preparation of various accounting statements and financial reports, relies on instructions and pre-established guidelines to perform the functions of the job, works well under immediate supervision.&nbsp;The primary job functions do not typically require exercising independent judgment as the clerk reports to a manager.</font></div>\n<div><font size=\"2\"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></font></div>\n<div style=\"margin: 12pt 0in 0pt 0.5in\"><b><font size=\"5\"><span><font size=\"2\">II.</font><span style=\"font: 7pt 'Times New Roman'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><font size=\"2\">ORGANIZATIONAL RELATIONSHIP</font></font></b></div>\n<div style=\"margin: 0in 0in 0pt 0.5in\">&nbsp;</div>\n<div style=\"margin: 0in 0in 0pt 0.5in\"><font size=\"2\">The Accounts Payable Clerk reports directly to the Accounting Manager. Works closely with the Controllers, Staff Accountants, Purchasing Department, and vendors as they pertain to the performance of the responsibilities of this position.</font></div>\n<div style=\"margin: 12pt 0in 0pt 0.5in\"><b><font size=\"5\"><span><font size=\"2\">III.</font><span style=\"font: 7pt 'Times New Roman'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><font size=\"2\">AUTHORITY</font></font></b></div>\n<div style=\"margin: 0in 0in 0pt 0.5in\">&nbsp;</div>\n<div style=\"margin: 0in 0in 0pt 0.5in\"><font size=\"2\">There are no direct reports to the Accounts Payable Clerk.<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></font></div>\n<div style=\"margin: 12pt 0in 0pt 0.5in\"><b><font size=\"5\"><span><font size=\"2\">IV.</font><span style=\"font: 7pt 'Times New Roman'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><font size=\"2\">RESPONSIBILITY</font></font></b></div>\n<div style=\"margin: 0in 0in 0pt 0.5in\">&nbsp;</div>\n<div style=\"margin: 0in 0in 0pt 0.5in\"><font size=\"2\">The Accounts Payable Clerk is responsible for:</font></div>\n<div style=\"margin: 0in 0in 0pt 0.5in\">&nbsp;</div>\n<div style=\"text-indent: -0.25in; margin: 0in 0in 6pt 1in\">\n<span><font size=\"2\">&middot;</font><span style=\"font: 7pt 'Times New Roman'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><font size=\"2\">Recording vendor invoices on a daily basis for all companies and applying the transaction to the appropriate requisition or purchase order.&nbsp;Any vendor invoices that are unable to be recorded will be investigated on a daily or weekly basis, as necessary.</font>\n</div>\n<div style=\"text-indent: -0.25in; margin: 0in 0in 6pt 1in\">\n<span><font size=\"2\">&middot;</font><span style=\"font: 7pt 'Times New Roman'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><font size=\"2\">Reconciling the accounts payable subsidiary balances with the Lawson book balances on a monthly basis for all companies.</font>\n</div>\n<div style=\"text-indent: -0.25in; margin: 0in 0in 6pt 1in\">\n<span><font size=\"2\">&middot;</font><span style=\"font: 7pt 'Times New Roman'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><font size=\"2\">Performing the computer check writing sequence for all companies, including but not limited to the creation of a payable trial balance, recommendation of vendors to be paid, the vendor invoice selection process, printing of the checks and obtaining signatures.</font>\n</div>\n<div style=\"text-indent: -0.25in; margin: 0in 0in 6pt 1in\">\n<span><font size=\"2\">&middot;</font><span style=\"font: 7pt 'Times New Roman'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><font size=\"2\">Maintaining vendor relationships relating to credit references.</font>\n</div>\n<div style=\"text-indent: -0.25in; margin: 0in 0in 6pt 1in\">\n<span><font size=\"2\">&middot;</font><span style=\"font: 7pt 'Times New Roman'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><font size=\"2\">Responding to vendor calls regarding pay status and vendor invoice status.</font>\n</div>\n<div style=\"text-indent: -0.25in; margin: 0in 0in 6pt 1in\">\n<span><font size=\"2\">&middot;</font><span style=\"font: 7pt 'Times New Roman'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><font size=\"2\">Reviewing and processing petty cash or other imprest account transactions that are submitted for reimbursement according to the petty cash procedures.</font>\n</div>\n<div style=\"text-indent: -0.25in; margin: 0in 0in 6pt 1in\">\n<span><font size=\"2\">&middot;</font><span style=\"font: 7pt 'Times New Roman'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><font size=\"2\">Monitor and evaluate all claims payable accounts and determine appropriate internal and external transactions to be recorded to claims payable based on requisition and claim descriptions.&nbsp;Accumulate documentation for claims to be submitted to insurance representatives.&nbsp;</font>\n</div>\n<div style=\"text-indent: -0.25in; margin: 0in 0in 6pt 1in\">\n<span><font size=\"2\">&middot;</font><span style=\"font: 7pt 'Times New Roman'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><font size=\"2\">Review all entries into the Property Plant and Equipment accounts and separate required filing of these documents.</font>\n</div>\n<div style=\"text-indent: -0.25in; margin: 0in 0in 6pt 1in\">\n<span><font size=\"2\">&middot;</font><span style=\"font: 7pt 'Times New Roman'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><font size=\"2\">Prepare written work process descriptions for all tasks performed.</font>\n</div>\n<div style=\"text-indent: -0.25in; margin: 0in 0in 6pt 1in\">\n<span><font size=\"2\">&middot;</font><span style=\"font: 7pt 'Times New Roman'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><font size=\"2\">Reviews invoices for accuracy and completeness and sorts documents by account name or number and processes invoices for payment.&nbsp;May perform other basic clerical duties associated with accounts payable such as filing.&nbsp;May post transactions to journals, ledgers and other records. </font>\n</div>\n<div style=\"text-indent: -0.25in; margin: 0in 0in 6pt 1in\">\n<span><font size=\"2\">&middot;</font><span style=\"font: 7pt 'Times New Roman'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><font size=\"2\">Verifies and posts transactions to journals, ledgers and other records.&nbsp;Prepares statements, invoices and vouchers.&nbsp;May handle balancing and reconciliations. May specialize in one area of the accounting function (e.g. project accounting, personnel costs). </font>\n</div>\n<div style=\"text-indent: -0.25in; margin-left: 1in\">\n<span style=\"font-size: 10pt\">&middot;<span style=\"font: 7pt 'Times New Roman'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style=\"font-size: 10pt\">Reviews records of routine financial transactions relative to collections, refunds, accounts payable, and accounts receivable to ensure accuracy and completeness of calculations, legitimacy of transactions, proper authorization, and limited purchasing.</span>\n</div>\n<div style=\"text-indent: -0.25in; margin-left: 1in\">\n<span style=\"font-size: 10pt\">&middot;<span style=\"font: 7pt 'Times New Roman'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style=\"font-size: 10pt\">Responsible for posting and journalizing a variety of small accounts or one or more large accounts of limited complexity.</span>\n</div>\n<div style=\"text-indent: -0.25in; margin-left: 1in\">\n<span style=\"font-size: 10pt\">&middot;<span style=\"font: 7pt 'Times New Roman'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style=\"font-size: 10pt\">Assists in or maintains vendor records (files).</span>\n</div>\n<div style=\"text-indent: -0.25in; margin-left: 1in\">\n<span style=\"font-size: 10pt\">&middot;<span style=\"font: 7pt 'Times New Roman'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style=\"font-size: 10pt\">Assists in the distribution of vendor checks </span>\n</div>\n<div style=\"text-indent: -0.25in; margin-left: 1in\">\n<span style=\"font-size: 10pt\">&middot;<span style=\"font: 7pt 'Times New Roman'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style=\"font-size: 10pt\">Locates and corrects journalizing and posting errors (integrations).</span>\n</div>\n<div style=\"text-indent: -0.25in; margin-left: 1in\">\n<span style=\"font-size: 10pt\">&middot;<span style=\"font: 7pt 'Times New Roman'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style=\"font-size: 10pt\">Determines necessary entries to reflect information not yet recorded (accruals).</span>\n</div>\n<div style=\"text-indent: -0.25in; margin-left: 1in\">\n<span style=\"font-size: 10pt\">&middot;<span style=\"font: 7pt 'Times New Roman'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style=\"font-size: 10pt\">Reconciles ledger entries to ensure accounts are in balance.</span>\n</div>\n<div style=\"text-align: justify; text-indent: -0.25in; margin: 0in 0in 0pt 1in\">\n<span><font size=\"2\">&middot;</font><span style=\"font: 7pt 'Times New Roman'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><font size=\"2\">Manage all aspects of the Accounts Payable cycle, including annual preparation of tax forms and fiscal year-end audit schedules</font>\n</div>\n<div style=\"text-align: justify; margin: 0in 0in 0pt 0.75in\">&nbsp;</div>\n<div style=\"text-indent: -0.25in; margin: 0in 0in 0pt 1in\">\n<span><font size=\"2\">&middot;</font><span style=\"font: 7pt 'Times New Roman'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><font size=\"2\">Assist in accounting functions by providing backup for personnel costs and project accounting processing</font>\n</div>\n<div>&nbsp;</div>\n<div style=\"text-align: justify; text-indent: -0.25in; margin: 0in 0in 0pt 1in\">\n<span><font size=\"2\">&middot;</font><span style=\"font: 7pt 'Times New Roman'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><font size=\"2\">Reconcile petty cash and other cash accounts</font>\n</div>\n<div>&nbsp;</div>\n<div style=\"text-align: justify; text-indent: -0.25in; margin: 0in 0in 0pt 1in\">\n<span><font size=\"2\">&middot;</font><span style=\"font: 7pt 'Times New Roman'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><font size=\"2\">Other duties as assigned.</font>\n</div>\n<div style=\"margin: 12pt 0in 0pt 0.5in\"><b><font size=\"5\"><span><font size=\"2\">V.</font><span style=\"font: 7pt 'Times New Roman'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><font size=\"2\">ETHICAL RESPONSIBILITY</font></font></b></div>\n<div style=\"margin: 0in 0in 0pt 0.5in\">&nbsp;</div>\n<div style=\"margin: 0in 0in 0pt 0.5in\"><font size=\"2\">The Accounts Payable Clerk has an obligation to the organization, their profession and themselves to maintain the highest standards of ethical conduct.&nbsp;The Accounts Payable Clerk is expected to adhere to the Standards of Ethical Conduct as promulgated by the Institute of Management Accountants.</font></div>\n<div style=\"margin: 12pt 0in 0pt 0.5in\"><b><font size=\"5\"><span><font size=\"2\">VI.</font><span style=\"font: 7pt 'Times New Roman'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><font size=\"2\">HOURS OF WORK</font></font></b></div>\n<div style=\"margin: 0in 0in 0pt 0.5in\">&nbsp;</div>\n<div style=\"margin: 0in 0in 0pt 0.5in\"><font size=\"2\">Office hours are Monday through Friday; 8:00am until 5:00pm. </font></div>\n<div style=\"margin: 12pt 0in 0pt 0.5in\"><b><font size=\"5\"><span><font size=\"2\">VII.</font><span style=\"font: 7pt 'Times New Roman'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><font size=\"2\">QUALIFICATIONS AND EXPERIENCE&nbsp;&nbsp; </font></font></b></div>\n<div style=\"margin: 0in 0in 0pt 0.5in\">&nbsp;</div>\n<div style=\"margin: 0in 0in 0pt 1.5in\"><font size=\"2\">Skills:&nbsp;&nbsp;Working knowledge of Lawson or similar accounting packages.&nbsp; Portuguese language preferred.</font></div>\n<div style=\"margin: 0in 0in 0pt 1.5in\"><font size=\"2\">Working knowledge of Microsoft Office Suite applications &ndash; Excel, Word, Outlook</font></div>\n<div style=\"margin: 0in 0in 0pt 1.5in\"><font size=\"2\">Proficient with 10-key and computer data entry</font></div>\n<div style=\"margin: 0in 0in 0pt 0.5in\"><font size=\"2\">Requires a minimum of a high school diploma or its equivalent.&nbsp;Candidate should possess at least 3 years of experience in the field.&nbsp;Has knowledge of commonly-used concepts, practices, and procedures within a particular field.</font></div>\n</td></tr>\n"
    end
  end

end
