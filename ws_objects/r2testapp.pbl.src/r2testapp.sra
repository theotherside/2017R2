$PBExportHeader$r2testapp.sra
$PBExportComments$Generated Application Object
forward
global type r2testapp from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type r2testapp from application
string appname = "r2testapp"
end type
global r2testapp r2testapp

on r2testapp.create
appname = "r2testapp"
message = create message
sqlca = create transaction
sqlda = create dynamicdescriptionarea
sqlsa = create dynamicstagingarea
error = create error
end on

on r2testapp.destroy
destroy( sqlca )
destroy( sqlda )
destroy( sqlsa )
destroy( error )
destroy( message )
end on

