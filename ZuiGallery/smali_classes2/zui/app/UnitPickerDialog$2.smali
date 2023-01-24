.class Lzui/app/UnitPickerDialog$2;
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

    .line 143
    iput-object p1, p0, Lzui/app/UnitPickerDialog$2;->this$0:Lzui/app/UnitPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 146
    iget-object p1, p0, Lzui/app/UnitPickerDialog$2;->this$0:Lzui/app/UnitPickerDialog;

    invoke-static {p1}, Lzui/app/UnitPickerDialog;->access$000(Lzui/app/UnitPickerDialog;)Lzui/app/UnitPickerDialog$OnUnitSetListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 147
    iget-object p1, p0, Lzui/app/UnitPickerDialog$2;->this$0:Lzui/app/UnitPickerDialog;

    invoke-static {p1}, Lzui/app/UnitPickerDialog;->access$000(Lzui/app/UnitPickerDialog;)Lzui/app/UnitPickerDialog$OnUnitSetListener;

    move-result-object p1

    iget-object v0, p0, Lzui/app/UnitPickerDialog$2;->this$0:Lzui/app/UnitPickerDialog;

    .line 148
    invoke-static {v0}, Lzui/app/UnitPickerDialog;->access$100(Lzui/app/UnitPickerDialog;)Lzui/widget/NumberPickerX;

    move-result-object v1

    invoke-virtual {v1}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v1

    iget-object v2, p0, Lzui/app/UnitPickerDialog$2;->this$0:Lzui/app/UnitPickerDialog;

    invoke-static {v2}, Lzui/app/UnitPickerDialog;->access$200(Lzui/app/UnitPickerDialog;)Lzui/widget/NumberPickerX;

    move-result-object v2

    invoke-virtual {v2}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v2

    .line 147
    invoke-interface {p1, v0, v1, v2}, Lzui/app/UnitPickerDialog$OnUnitSetListener;->onUnitSet(Lzui/app/UnitPickerDialog;II)V

    .line 150
    :cond_0
    iget-object p1, p0, Lzui/app/UnitPickerDialog$2;->this$0:Lzui/app/UnitPickerDialog;

    invoke-virtual {p1}, Lzui/app/UnitPickerDialog;->dismiss()V

    return-void
.end method
