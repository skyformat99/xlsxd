module libxlsxd.docproperties;

import libxlsxd.xlsxwrap;

struct DocProperties {
	lxw_doc_properties* handle;

	this(lxw_doc_properties* handle) {
		this.handle = handle;
	}
}
