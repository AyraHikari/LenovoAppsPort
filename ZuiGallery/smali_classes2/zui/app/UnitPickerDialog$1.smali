.class Lzui/app/UnitPickerDialog$1;
.super Ljava/lang/Object;
.source "UnitPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/app/UnitPickerDialog;-><init>(Landroid/content/Context;ILzui/app/UnitPickerDialog$OnUnitSetListener;Lzui/app/UnitPickerDialog$UnitItem;Lzui/app/UnitPickerDialog$UnitItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/app/UnitPickerDialog;


# direct methods
.method constructor <init>(Lzui/app/UnitPickerDialog;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lzui/app/UnitPickerDialog$1;->this$0:Lzui/app/UnitPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 139
    iget-object p1, p0, Lzui/app/UnitPickerDialog$1;->this$0:Lzui/app/UnitPickerDialog;

    invoke-virtual {p1}, Lzui/app/UnitPickerDialog;->cancel()V

    return-void
.end method
