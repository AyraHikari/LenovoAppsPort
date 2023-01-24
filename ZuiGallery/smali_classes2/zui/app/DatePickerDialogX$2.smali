.class Lzui/app/DatePickerDialogX$2;
.super Ljava/lang/Object;
.source "DatePickerDialogX.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/app/DatePickerDialogX;-><init>(Landroid/content/Context;ILzui/app/DatePickerDialogX$OnDateSetListener;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/app/DatePickerDialogX;


# direct methods
.method constructor <init>(Lzui/app/DatePickerDialogX;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lzui/app/DatePickerDialogX$2;->this$0:Lzui/app/DatePickerDialogX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 127
    iget-object p1, p0, Lzui/app/DatePickerDialogX$2;->this$0:Lzui/app/DatePickerDialogX;

    invoke-static {p1}, Lzui/app/DatePickerDialogX;->access$000(Lzui/app/DatePickerDialogX;)Lzui/app/DatePickerDialogX$OnDateSetListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 128
    iget-object p1, p0, Lzui/app/DatePickerDialogX$2;->this$0:Lzui/app/DatePickerDialogX;

    invoke-static {p1}, Lzui/app/DatePickerDialogX;->access$000(Lzui/app/DatePickerDialogX;)Lzui/app/DatePickerDialogX$OnDateSetListener;

    move-result-object p1

    iget-object v0, p0, Lzui/app/DatePickerDialogX$2;->this$0:Lzui/app/DatePickerDialogX;

    invoke-static {v0}, Lzui/app/DatePickerDialogX;->access$100(Lzui/app/DatePickerDialogX;)Lzui/widget/NumberPickerX;

    move-result-object v1

    invoke-virtual {v1}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v1

    iget-object v2, p0, Lzui/app/DatePickerDialogX$2;->this$0:Lzui/app/DatePickerDialogX;

    .line 129
    invoke-static {v2}, Lzui/app/DatePickerDialogX;->access$200(Lzui/app/DatePickerDialogX;)Lzui/widget/NumberPickerX;

    move-result-object v2

    invoke-virtual {v2}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v2

    iget-object v3, p0, Lzui/app/DatePickerDialogX$2;->this$0:Lzui/app/DatePickerDialogX;

    invoke-static {v3}, Lzui/app/DatePickerDialogX;->access$300(Lzui/app/DatePickerDialogX;)Lzui/widget/NumberPickerX;

    move-result-object v3

    invoke-virtual {v3}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v3

    .line 128
    invoke-interface {p1, v0, v1, v2, v3}, Lzui/app/DatePickerDialogX$OnDateSetListener;->onDateSet(Lzui/app/DatePickerDialogX;III)V

    .line 131
    :cond_0
    iget-object p1, p0, Lzui/app/DatePickerDialogX$2;->this$0:Lzui/app/DatePickerDialogX;

    invoke-virtual {p1}, Lzui/app/DatePickerDialogX;->dismiss()V

    return-void
.end method
