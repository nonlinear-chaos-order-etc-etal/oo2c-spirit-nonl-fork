#include <OOC/AST.oh>
#include <Strings.oh>
#include <Object.oh>
static void OOC_AST__InitNodeList(OOC_AST__NodeList nl);
static void OOC_AST__InitType(OOC_AST__Type t);

/* run-time meta data */
static RT0__ModuleDesc _mid;
RT0__StructDesc _td_OOC_AST__Node = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc}, NULL, NULL, &_mid, "Node", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__5500 = { (RT0__Struct[]){&_td_OOC_AST__Node}, NULL, NULL, &_mid, NULL, 4, 1, 0, RT0__strOpenArray };
RT0__StructDesc _td_OOC_AST__NodeArray = { (RT0__Struct[]){&_td_OOC_AST__5500}, NULL, NULL, &_mid, "NodeArray", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__NodeDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc}, (void*[]){(void*)OOC_AST__NodeDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "NodeDesc", 0, 0, (1<<RT0__flagAtomic), RT0__strRecord };
RT0__StructDesc _td_OOC_AST__NodeList = { (RT0__Struct[]){&_td_OOC_AST__NodeListDesc}, NULL, NULL, &_mid, "NodeList", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__NodeListDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__NodeListDesc}, (void*[]){(void*)OOC_AST__NodeListDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString,(void*)OOC_AST__NodeListDesc_Append}, NULL, &_mid, "NodeListDesc", 8, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__Builder = { (RT0__Struct[]){&_td_OOC_AST__BuilderDesc}, NULL, NULL, &_mid, "Builder", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__BuilderDesc = { (RT0__Struct[]){&_td_OOC_AST__BuilderDesc}, (void*[]){(void*)OOC_AST__BuilderDesc_SetModuleName,(void*)OOC_AST__BuilderDesc_NewNodeList,(void*)OOC_AST__BuilderDesc_Terminal,(void*)OOC_AST__BuilderDesc_IdentDef,(void*)OOC_AST__BuilderDesc_ModuleIdent,(void*)OOC_AST__BuilderDesc_ArrayType,(void*)OOC_AST__BuilderDesc_FieldList,(void*)OOC_AST__BuilderDesc_RecordType,(void*)OOC_AST__BuilderDesc_PointerType,(void*)OOC_AST__BuilderDesc_FPSection,(void*)OOC_AST__BuilderDesc_FormalPars,(void*)OOC_AST__BuilderDesc_ProcType,(void*)OOC_AST__BuilderDesc_TPSection,(void*)OOC_AST__BuilderDesc_TypePars,(void*)OOC_AST__BuilderDesc_QualType,(void*)OOC_AST__BuilderDesc_ImportDecl,(void*)OOC_AST__BuilderDesc_ConstDecl,(void*)OOC_AST__BuilderDesc_TypeDecl,(void*)OOC_AST__BuilderDesc_VarDecl,(void*)OOC_AST__BuilderDesc_Receiver,(void*)OOC_AST__BuilderDesc_ProcDecl,(void*)OOC_AST__BuilderDesc_ImportList,(void*)OOC_AST__BuilderDesc_Body,(void*)OOC_AST__BuilderDesc_Module,(void*)OOC_AST__BuilderDesc_Operator,(void*)OOC_AST__BuilderDesc_Factor,(void*)OOC_AST__BuilderDesc_Set,(void*)OOC_AST__BuilderDesc_ArrayIndex,(void*)OOC_AST__BuilderDesc_FunctionCall,(void*)OOC_AST__BuilderDesc_Assignment,(void*)OOC_AST__BuilderDesc_ProcedureCall,(void*)OOC_AST__BuilderDesc_IfStatm,(void*)OOC_AST__BuilderDesc_CaseStatm,(void*)OOC_AST__BuilderDesc_WhileStatm,(void*)OOC_AST__BuilderDesc_RepeatStatm,(void*)OOC_AST__BuilderDesc_ForStatm,(void*)OOC_AST__BuilderDesc_IterateStatm,(void*)OOC_AST__BuilderDesc_LoopStatm,(void*)OOC_AST__BuilderDesc_WithStatm,(void*)OOC_AST__BuilderDesc_ExitStatm,(void*)OOC_AST__BuilderDesc_ReturnStatm,(void*)OOC_AST__BuilderDesc_Catch,(void*)OOC_AST__BuilderDesc_TryStatm,(void*)OOC_AST__BuilderDesc_Flags,(void*)OOC_AST__BuilderDesc_ProcWithoutBody,(void*)OOC_AST__BuilderDesc_ProcIdFlag,(void*)OOC_AST__BuilderDesc_ModuleFlags,(void*)OOC_AST__BuilderDesc_LinkFileFlag,(void*)OOC_AST__BuilderDesc_LinkObjFlag,(void*)OOC_AST__BuilderDesc_LinkLibFlag}, NULL, &_mid, "BuilderDesc", 4, 0, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__Flags = { (RT0__Struct[]){&_td_OOC_AST__FlagsDesc}, NULL, NULL, &_mid, "Flags", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__Terminal = { (RT0__Struct[]){&_td_OOC_AST__TerminalDesc}, NULL, NULL, &_mid, "Terminal", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__TerminalDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__TerminalDesc}, (void*[]){(void*)OOC_AST__TerminalDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString,(void*)OOC_AST__TerminalDesc_GetString}, NULL, &_mid, "TerminalDesc", 4, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__IdentDef = { (RT0__Struct[]){&_td_OOC_AST__IdentDefDesc}, NULL, NULL, &_mid, "IdentDef", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__IdentDefDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__IdentDefDesc}, (void*[]){(void*)OOC_AST__IdentDefDesc_Accept,(void*)OOC_AST__IdentDefDesc_AttachDocString}, NULL, &_mid, "IdentDefDesc", 12, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__ModuleIdent = { (RT0__Struct[]){&_td_OOC_AST__ModuleIdentDesc}, NULL, NULL, &_mid, "ModuleIdent", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__ModuleIdentDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__ModuleIdentDesc}, (void*[]){(void*)OOC_AST__ModuleIdentDesc_Accept,(void*)OOC_AST__ModuleIdentDesc_AttachDocString}, NULL, &_mid, "ModuleIdentDesc", 8, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__Type = { (RT0__Struct[]){&_td_OOC_AST__TypeDesc}, NULL, NULL, &_mid, "Type", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__TypeDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__TypeDesc}, (void*[]){(void*)OOC_AST__NodeDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "TypeDesc", 0, 1, (1<<RT0__flagAtomic), RT0__strRecord };
RT0__StructDesc _td_OOC_AST__ArrayType = { (RT0__Struct[]){&_td_OOC_AST__ArrayTypeDesc}, NULL, NULL, &_mid, "ArrayType", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__ArrayTypeDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__TypeDesc,&_td_OOC_AST__ArrayTypeDesc}, (void*[]){(void*)OOC_AST__ArrayTypeDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "ArrayTypeDesc", 20, 2, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__FieldList = { (RT0__Struct[]){&_td_OOC_AST__FieldListDesc}, NULL, NULL, &_mid, "FieldList", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__FieldListDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__FieldListDesc}, (void*[]){(void*)OOC_AST__FieldListDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "FieldListDesc", 12, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__RecordType = { (RT0__Struct[]){&_td_OOC_AST__RecordTypeDesc}, NULL, NULL, &_mid, "RecordType", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__RecordTypeDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__TypeDesc,&_td_OOC_AST__RecordTypeDesc}, (void*[]){(void*)OOC_AST__RecordTypeDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "RecordTypeDesc", 28, 2, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__PointerType = { (RT0__Struct[]){&_td_OOC_AST__PointerTypeDesc}, NULL, NULL, &_mid, "PointerType", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__PointerTypeDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__TypeDesc,&_td_OOC_AST__PointerTypeDesc}, (void*[]){(void*)OOC_AST__PointerTypeDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "PointerTypeDesc", 16, 2, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__FPSection = { (RT0__Struct[]){&_td_OOC_AST__FPSectionDesc}, NULL, NULL, &_mid, "FPSection", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__FPSectionDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__FPSectionDesc}, (void*[]){(void*)OOC_AST__FPSectionDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "FPSectionDesc", 16, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__FormalPars = { (RT0__Struct[]){&_td_OOC_AST__FormalParsDesc}, NULL, NULL, &_mid, "FormalPars", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__FormalParsDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__FormalParsDesc}, (void*[]){(void*)OOC_AST__FormalParsDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "FormalParsDesc", 32, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__ProcType = { (RT0__Struct[]){&_td_OOC_AST__ProcTypeDesc}, NULL, NULL, &_mid, "ProcType", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__ProcTypeDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__TypeDesc,&_td_OOC_AST__ProcTypeDesc}, (void*[]){(void*)OOC_AST__ProcTypeDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "ProcTypeDesc", 8, 2, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__TPSection = { (RT0__Struct[]){&_td_OOC_AST__TPSectionDesc}, NULL, NULL, &_mid, "TPSection", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__TPSectionDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__TPSectionDesc}, (void*[]){(void*)OOC_AST__TPSectionDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "TPSectionDesc", 16, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__TypePars = { (RT0__Struct[]){&_td_OOC_AST__TypeParsDesc}, NULL, NULL, &_mid, "TypePars", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__TypeParsDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__TypeParsDesc}, (void*[]){(void*)OOC_AST__TypeParsDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "TypeParsDesc", 12, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__QualType = { (RT0__Struct[]){&_td_OOC_AST__QualTypeDesc}, NULL, NULL, &_mid, "QualType", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__QualTypeDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__QualTypeDesc}, (void*[]){(void*)OOC_AST__QualTypeDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "QualTypeDesc", 16, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__ImportDecl = { (RT0__Struct[]){&_td_OOC_AST__ImportDeclDesc}, NULL, NULL, &_mid, "ImportDecl", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__ImportDeclDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__ImportDeclDesc}, (void*[]){(void*)OOC_AST__ImportDeclDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "ImportDeclDesc", 16, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__ConstDecl = { (RT0__Struct[]){&_td_OOC_AST__ConstDeclDesc}, NULL, NULL, &_mid, "ConstDecl", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__ConstDeclDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__ConstDeclDesc}, (void*[]){(void*)OOC_AST__ConstDeclDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "ConstDeclDesc", 20, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__TypeDecl = { (RT0__Struct[]){&_td_OOC_AST__TypeDeclDesc}, NULL, NULL, &_mid, "TypeDecl", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__TypeDeclDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__TypeDeclDesc}, (void*[]){(void*)OOC_AST__TypeDeclDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "TypeDeclDesc", 24, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__VarDecl = { (RT0__Struct[]){&_td_OOC_AST__VarDeclDesc}, NULL, NULL, &_mid, "VarDecl", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__VarDeclDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__VarDeclDesc}, (void*[]){(void*)OOC_AST__VarDeclDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "VarDeclDesc", 16, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__Receiver = { (RT0__Struct[]){&_td_OOC_AST__ReceiverDesc}, NULL, NULL, &_mid, "Receiver", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__ReceiverDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__ReceiverDesc}, (void*[]){(void*)OOC_AST__ReceiverDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "ReceiverDesc", 36, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__Body = { (RT0__Struct[]){&_td_OOC_AST__BodyDesc}, NULL, NULL, &_mid, "Body", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__BodyDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__BodyDesc}, (void*[]){(void*)OOC_AST__BodyDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "BodyDesc", 20, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__ProcDecl = { (RT0__Struct[]){&_td_OOC_AST__ProcDeclDesc}, NULL, NULL, &_mid, "ProcDecl", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__ProcDeclDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__ProcDeclDesc}, (void*[]){(void*)OOC_AST__ProcDeclDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "ProcDeclDesc", 36, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__ImportList = { (RT0__Struct[]){&_td_OOC_AST__ImportListDesc}, NULL, NULL, &_mid, "ImportList", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__ImportListDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__ImportListDesc}, (void*[]){(void*)OOC_AST__ImportListDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "ImportListDesc", 12, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__Module = { (RT0__Struct[]){&_td_OOC_AST__ModuleDesc}, NULL, NULL, &_mid, "Module", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__ModuleDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__ModuleDesc}, (void*[]){(void*)OOC_AST__ModuleDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "ModuleDesc", 32, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__Operator = { (RT0__Struct[]){&_td_OOC_AST__OperatorDesc}, NULL, NULL, &_mid, "Operator", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__OperatorDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__OperatorDesc}, (void*[]){(void*)OOC_AST__OperatorDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "OperatorDesc", 12, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__Factor = { (RT0__Struct[]){&_td_OOC_AST__FactorDesc}, NULL, NULL, &_mid, "Factor", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__FactorDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__FactorDesc}, (void*[]){(void*)OOC_AST__FactorDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "FactorDesc", 12, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__Set = { (RT0__Struct[]){&_td_OOC_AST__SetDesc}, NULL, NULL, &_mid, "Set", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__SetDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__SetDesc}, (void*[]){(void*)OOC_AST__SetDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "SetDesc", 16, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__ArrayIndex = { (RT0__Struct[]){&_td_OOC_AST__ArrayIndexDesc}, NULL, NULL, &_mid, "ArrayIndex", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__ArrayIndexDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__ArrayIndexDesc}, (void*[]){(void*)OOC_AST__ArrayIndexDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "ArrayIndexDesc", 16, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__FunctionCall = { (RT0__Struct[]){&_td_OOC_AST__FunctionCallDesc}, NULL, NULL, &_mid, "FunctionCall", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__FunctionCallDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__FunctionCallDesc}, (void*[]){(void*)OOC_AST__FunctionCallDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "FunctionCallDesc", 16, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__Assignment = { (RT0__Struct[]){&_td_OOC_AST__AssignmentDesc}, NULL, NULL, &_mid, "Assignment", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__AssignmentDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__AssignmentDesc}, (void*[]){(void*)OOC_AST__AssignmentDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "AssignmentDesc", 4, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__ProcedureCall = { (RT0__Struct[]){&_td_OOC_AST__ProcedureCallDesc}, NULL, NULL, &_mid, "ProcedureCall", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__ProcedureCallDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__ProcedureCallDesc}, (void*[]){(void*)OOC_AST__ProcedureCallDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "ProcedureCallDesc", 4, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__IfStatm = { (RT0__Struct[]){&_td_OOC_AST__IfStatmDesc}, NULL, NULL, &_mid, "IfStatm", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__IfStatmDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__IfStatmDesc}, (void*[]){(void*)OOC_AST__IfStatmDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "IfStatmDesc", 16, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__CaseStatm = { (RT0__Struct[]){&_td_OOC_AST__CaseStatmDesc}, NULL, NULL, &_mid, "CaseStatm", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__CaseStatmDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__CaseStatmDesc}, (void*[]){(void*)OOC_AST__CaseStatmDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "CaseStatmDesc", 28, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__WhileStatm = { (RT0__Struct[]){&_td_OOC_AST__WhileStatmDesc}, NULL, NULL, &_mid, "WhileStatm", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__WhileStatmDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__WhileStatmDesc}, (void*[]){(void*)OOC_AST__WhileStatmDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "WhileStatmDesc", 20, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__RepeatStatm = { (RT0__Struct[]){&_td_OOC_AST__RepeatStatmDesc}, NULL, NULL, &_mid, "RepeatStatm", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__RepeatStatmDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__RepeatStatmDesc}, (void*[]){(void*)OOC_AST__RepeatStatmDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "RepeatStatmDesc", 16, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__ForStatm = { (RT0__Struct[]){&_td_OOC_AST__ForStatmDesc}, NULL, NULL, &_mid, "ForStatm", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__ForStatmDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__ForStatmDesc}, (void*[]){(void*)OOC_AST__ForStatmDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "ForStatmDesc", 44, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__IterateStatm = { (RT0__Struct[]){&_td_OOC_AST__IterateStatmDesc}, NULL, NULL, &_mid, "IterateStatm", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__IterateStatmDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__IterateStatmDesc}, (void*[]){(void*)OOC_AST__IterateStatmDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "IterateStatmDesc", 28, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__LoopStatm = { (RT0__Struct[]){&_td_OOC_AST__LoopStatmDesc}, NULL, NULL, &_mid, "LoopStatm", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__LoopStatmDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__LoopStatmDesc}, (void*[]){(void*)OOC_AST__LoopStatmDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "LoopStatmDesc", 12, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__WithStatm = { (RT0__Struct[]){&_td_OOC_AST__WithStatmDesc}, NULL, NULL, &_mid, "WithStatm", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__WithStatmDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__WithStatmDesc}, (void*[]){(void*)OOC_AST__WithStatmDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "WithStatmDesc", 16, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__ExitStatm = { (RT0__Struct[]){&_td_OOC_AST__ExitStatmDesc}, NULL, NULL, &_mid, "ExitStatm", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__ExitStatmDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__ExitStatmDesc}, (void*[]){(void*)OOC_AST__ExitStatmDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "ExitStatmDesc", 4, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__ReturnStatm = { (RT0__Struct[]){&_td_OOC_AST__ReturnStatmDesc}, NULL, NULL, &_mid, "ReturnStatm", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__ReturnStatmDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__ReturnStatmDesc}, (void*[]){(void*)OOC_AST__ReturnStatmDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "ReturnStatmDesc", 8, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__Catch = { (RT0__Struct[]){&_td_OOC_AST__CatchDesc}, NULL, NULL, &_mid, "Catch", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__CatchDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__CatchDesc}, (void*[]){(void*)OOC_AST__CatchDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "CatchDesc", 28, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__TryStatm = { (RT0__Struct[]){&_td_OOC_AST__TryStatmDesc}, NULL, NULL, &_mid, "TryStatm", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__TryStatmDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__TryStatmDesc}, (void*[]){(void*)OOC_AST__TryStatmDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "TryStatmDesc", 16, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__FlagsDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__FlagsDesc}, (void*[]){(void*)OOC_AST__FlagsDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "FlagsDesc", 16, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__ProcIdFlag = { (RT0__Struct[]){&_td_OOC_AST__ProcIdFlagDesc}, NULL, NULL, &_mid, "ProcIdFlag", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__ProcIdFlagDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__ProcIdFlagDesc}, (void*[]){(void*)OOC_AST__ProcIdFlagDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "ProcIdFlagDesc", 12, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__ModuleFlags = { (RT0__Struct[]){&_td_OOC_AST__ModuleFlagsDesc}, NULL, NULL, &_mid, "ModuleFlags", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__ModuleFlagsDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__ModuleFlagsDesc}, (void*[]){(void*)OOC_AST__ModuleFlagsDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "ModuleFlagsDesc", 28, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__LinkFileFlag = { (RT0__Struct[]){&_td_OOC_AST__LinkFileFlagDesc}, NULL, NULL, &_mid, "LinkFileFlag", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__LinkFileFlagDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__LinkFileFlagDesc}, (void*[]){(void*)OOC_AST__LinkFileFlagDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "LinkFileFlagDesc", 24, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__LinkObjFlag = { (RT0__Struct[]){&_td_OOC_AST__LinkObjFlagDesc}, NULL, NULL, &_mid, "LinkObjFlag", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__LinkObjFlagDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__LinkObjFlagDesc}, (void*[]){(void*)OOC_AST__LinkObjFlagDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "LinkObjFlagDesc", 8, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__LinkLibFlag = { (RT0__Struct[]){&_td_OOC_AST__LinkLibFlagDesc}, NULL, NULL, &_mid, "LinkLibFlag", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__LinkLibFlagDesc = { (RT0__Struct[]){&_td_OOC_AST__NodeDesc,&_td_OOC_AST__LinkLibFlagDesc}, (void*[]){(void*)OOC_AST__LinkLibFlagDesc_Accept,(void*)OOC_AST__NodeDesc_AttachDocString}, NULL, &_mid, "LinkLibFlagDesc", 36, 1, 0, RT0__strRecord };
RT0__StructDesc _td_OOC_AST__Visitor = { (RT0__Struct[]){&_td_OOC_AST__VisitorDesc}, NULL, NULL, &_mid, "Visitor", 4, -1, 0, RT0__strPointer };
RT0__StructDesc _td_OOC_AST__VisitorDesc = { (RT0__Struct[]){&_td_OOC_AST__VisitorDesc}, (void*[]){(void*)OOC_AST__VisitorDesc_VisitNodeList,(void*)OOC_AST__VisitorDesc_VisitTerminal,(void*)OOC_AST__VisitorDesc_VisitIdentDef,(void*)OOC_AST__VisitorDesc_VisitModuleIdent,(void*)OOC_AST__VisitorDesc_VisitArrayType,(void*)OOC_AST__VisitorDesc_VisitFieldList,(void*)OOC_AST__VisitorDesc_VisitRecordType,(void*)OOC_AST__VisitorDesc_VisitPointerType,(void*)OOC_AST__VisitorDesc_VisitFPSection,(void*)OOC_AST__VisitorDesc_VisitFormalPars,(void*)OOC_AST__VisitorDesc_VisitProcType,(void*)OOC_AST__VisitorDesc_VisitTPSection,(void*)OOC_AST__VisitorDesc_VisitTypePars,(void*)OOC_AST__VisitorDesc_VisitQualType,(void*)OOC_AST__VisitorDesc_VisitImportDecl,(void*)OOC_AST__VisitorDesc_VisitConstDecl,(void*)OOC_AST__VisitorDesc_VisitTypeDecl,(void*)OOC_AST__VisitorDesc_VisitVarDecl,(void*)OOC_AST__VisitorDesc_VisitReceiver,(void*)OOC_AST__VisitorDesc_VisitProcDecl,(void*)OOC_AST__VisitorDesc_VisitImportList,(void*)OOC_AST__VisitorDesc_VisitBody,(void*)OOC_AST__VisitorDesc_VisitModule,(void*)OOC_AST__VisitorDesc_VisitOperator,(void*)OOC_AST__VisitorDesc_VisitFactor,(void*)OOC_AST__VisitorDesc_VisitSet,(void*)OOC_AST__VisitorDesc_VisitArrayIndex,(void*)OOC_AST__VisitorDesc_VisitFunctionCall,(void*)OOC_AST__VisitorDesc_VisitAssignment,(void*)OOC_AST__VisitorDesc_VisitProcedureCall,(void*)OOC_AST__VisitorDesc_VisitIfStatm,(void*)OOC_AST__VisitorDesc_VisitCaseStatm,(void*)OOC_AST__VisitorDesc_VisitWhileStatm,(void*)OOC_AST__VisitorDesc_VisitRepeatStatm,(void*)OOC_AST__VisitorDesc_VisitForStatm,(void*)OOC_AST__VisitorDesc_VisitIterateStatm,(void*)OOC_AST__VisitorDesc_VisitLoopStatm,(void*)OOC_AST__VisitorDesc_VisitWithStatm,(void*)OOC_AST__VisitorDesc_VisitExitStatm,(void*)OOC_AST__VisitorDesc_VisitReturnStatm,(void*)OOC_AST__VisitorDesc_VisitCatch,(void*)OOC_AST__VisitorDesc_VisitTryStatm,(void*)OOC_AST__VisitorDesc_VisitFlags,(void*)OOC_AST__VisitorDesc_VisitProcIdFlag,(void*)OOC_AST__VisitorDesc_VisitModuleFlags,(void*)OOC_AST__VisitorDesc_VisitLinkFileFlag,(void*)OOC_AST__VisitorDesc_VisitLinkObjFlag,(void*)OOC_AST__VisitorDesc_VisitLinkLibFlag}, NULL, &_mid, "VisitorDesc", 0, 0, (1<<RT0__flagAtomic), RT0__strRecord };
RT0__StructDesc _td_OOC_AST__21500 = { (RT0__Struct[]){&RT0__char}, NULL, NULL, &_mid, NULL, 1, 1, (1<<RT0__flagAtomic), RT0__strOpenArray };
static RT0__ModuleDesc _mid = { (OOC_CHAR8*)"OOC:AST", (RT0__Struct[]) { &_td_OOC_AST__Node, &_td_OOC_AST__NodeArray, &_td_OOC_AST__NodeDesc, &_td_OOC_AST__NodeList, &_td_OOC_AST__NodeListDesc, &_td_OOC_AST__Builder, &_td_OOC_AST__BuilderDesc, &_td_OOC_AST__Flags, &_td_OOC_AST__Terminal, &_td_OOC_AST__TerminalDesc, &_td_OOC_AST__IdentDef, &_td_OOC_AST__IdentDefDesc, &_td_OOC_AST__ModuleIdent, &_td_OOC_AST__ModuleIdentDesc, &_td_OOC_AST__Type, &_td_OOC_AST__TypeDesc, &_td_OOC_AST__ArrayType, &_td_OOC_AST__ArrayTypeDesc, &_td_OOC_AST__FieldList, &_td_OOC_AST__FieldListDesc, &_td_OOC_AST__RecordType, &_td_OOC_AST__RecordTypeDesc, &_td_OOC_AST__PointerType, &_td_OOC_AST__PointerTypeDesc, &_td_OOC_AST__FPSection, &_td_OOC_AST__FPSectionDesc, &_td_OOC_AST__FormalPars, &_td_OOC_AST__FormalParsDesc, &_td_OOC_AST__ProcType, &_td_OOC_AST__ProcTypeDesc, &_td_OOC_AST__TPSection, &_td_OOC_AST__TPSectionDesc, &_td_OOC_AST__TypePars, &_td_OOC_AST__TypeParsDesc, &_td_OOC_AST__QualType, &_td_OOC_AST__QualTypeDesc, &_td_OOC_AST__ImportDecl, &_td_OOC_AST__ImportDeclDesc, &_td_OOC_AST__ConstDecl, &_td_OOC_AST__ConstDeclDesc, &_td_OOC_AST__TypeDecl, &_td_OOC_AST__TypeDeclDesc, &_td_OOC_AST__VarDecl, &_td_OOC_AST__VarDeclDesc, &_td_OOC_AST__Receiver, &_td_OOC_AST__ReceiverDesc, &_td_OOC_AST__Body, &_td_OOC_AST__BodyDesc, &_td_OOC_AST__ProcDecl, &_td_OOC_AST__ProcDeclDesc, &_td_OOC_AST__ImportList, &_td_OOC_AST__ImportListDesc, &_td_OOC_AST__Module, &_td_OOC_AST__ModuleDesc, &_td_OOC_AST__Operator, &_td_OOC_AST__OperatorDesc, &_td_OOC_AST__Factor, &_td_OOC_AST__FactorDesc, &_td_OOC_AST__Set, &_td_OOC_AST__SetDesc, &_td_OOC_AST__ArrayIndex, &_td_OOC_AST__ArrayIndexDesc, &_td_OOC_AST__FunctionCall, &_td_OOC_AST__FunctionCallDesc, &_td_OOC_AST__Assignment, &_td_OOC_AST__AssignmentDesc, &_td_OOC_AST__ProcedureCall, &_td_OOC_AST__ProcedureCallDesc, &_td_OOC_AST__IfStatm, &_td_OOC_AST__IfStatmDesc, &_td_OOC_AST__CaseStatm, &_td_OOC_AST__CaseStatmDesc, &_td_OOC_AST__WhileStatm, &_td_OOC_AST__WhileStatmDesc, &_td_OOC_AST__RepeatStatm, &_td_OOC_AST__RepeatStatmDesc, &_td_OOC_AST__ForStatm, &_td_OOC_AST__ForStatmDesc, &_td_OOC_AST__IterateStatm, &_td_OOC_AST__IterateStatmDesc, &_td_OOC_AST__LoopStatm, &_td_OOC_AST__LoopStatmDesc, &_td_OOC_AST__WithStatm, &_td_OOC_AST__WithStatmDesc, &_td_OOC_AST__ExitStatm, &_td_OOC_AST__ExitStatmDesc, &_td_OOC_AST__ReturnStatm, &_td_OOC_AST__ReturnStatmDesc, &_td_OOC_AST__Catch, &_td_OOC_AST__CatchDesc, &_td_OOC_AST__TryStatm, &_td_OOC_AST__TryStatmDesc, &_td_OOC_AST__FlagsDesc, &_td_OOC_AST__ProcIdFlag, &_td_OOC_AST__ProcIdFlagDesc, &_td_OOC_AST__ModuleFlags, &_td_OOC_AST__ModuleFlagsDesc, &_td_OOC_AST__LinkFileFlag, &_td_OOC_AST__LinkFileFlagDesc, &_td_OOC_AST__LinkObjFlag, &_td_OOC_AST__LinkObjFlagDesc, &_td_OOC_AST__LinkLibFlag, &_td_OOC_AST__LinkLibFlagDesc, &_td_OOC_AST__Visitor, &_td_OOC_AST__VisitorDesc, NULL }, 0 };

extern void OOC_OOC_AST_open(RT0__Module client) {
  if (_mid.openCount == 0) {
    OOC_Strings_open(&_mid);
    OOC_Object_open(&_mid);
    OOC_OOC_Scanner_InputBuffer_open(&_mid);
    OOC_OOC_Scanner_SymList_open(&_mid);
    OOC_OOC_Doc_open(&_mid);
    OOC_OOC_Scanner_Symbol_open(&_mid);
    OOC_RT0_open(&_mid);
    OOC_Object_open(&_mid);
    OOC_Exception_open(&_mid);

    RT0__RegisterModule(&_mid);
    OOC_OOC_AST_init();
  }
  _mid.openCount++;
}
extern void OOC_OOC_AST_close(RT0__Module client) {
  _mid.openCount--;
  if (_mid.openCount == 0) { 
    OOC_OOC_AST_destroy();
    RT0__UnregisterModule(&_mid);

    OOC_Strings_close(&_mid);
    OOC_Object_close(&_mid);
    OOC_OOC_Scanner_InputBuffer_close(&_mid);
    OOC_OOC_Scanner_SymList_close(&_mid);
    OOC_OOC_Doc_close(&_mid);
    OOC_OOC_Scanner_Symbol_close(&_mid);
    OOC_RT0_close(&_mid);
    OOC_Object_close(&_mid);
    OOC_Exception_close(&_mid);
  }
}

/* --- */
