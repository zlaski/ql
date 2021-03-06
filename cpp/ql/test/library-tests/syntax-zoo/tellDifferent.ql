import Compare

string describeTemplate(ControlFlowNode node) {
  node.isFromTemplateInstantiation(_) and
  result = "instantiation"
  or
  node.isFromUninstantiatedTemplate(_) and
  result = "uninstantiated"
}

from ControlFlowNode n1, ControlFlowNode n2, string msg
where differentEdge(n1, n2, msg)
select getScopeName(n1), n1, n2, msg, concat(describeTemplate(n1), ", ")
