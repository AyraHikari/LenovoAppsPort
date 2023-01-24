.class Lzui/app/TimePickerDialogX$2;
.super Ljava/lang/Object;
.source "TimePickerDialogX.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/app/TimePickerDialogX;-><init>(Landroid/content/Context;ILzui/app/TimePickerDialogX$OnTimeSetListener;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/app/TimePickerDialogX;


# direct methods
.method constructor <init>(Lzui/app/TimePickerDialogX;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lzui/app/TimePickerDialogX$2;->this$0:Lzui/app/TimePickerDialogX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 124
    iget-object p1, p0, Lzui/app/TimePickerDialogX$2;->this$0:Lzui/app/TimePickerDialogX;

    invoke-static {p1}, Lzui/app/TimePickerDialogX;->access$000(Lzui/app/TimePickerDialogX;)Lzui/app/TimePickerDialogX$OnTimeSetListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 125
    iget-object p1, p0, Lzui/app/TimePickerDialogX$2;->this$0:Lzui/app/TimePickerDialogX;

    invoke-static {p1}, Lzui/app/TimePickerDialogX;->access$000(Lzui/app/TimePickerDialogX;)Lzui/app/TimePickerDialogX$OnTimeSetListener;

    move-result-object p1

    iget-object v0, p0, Lzui/app/TimePickerDialogX$2;->this$0:Lzui/app/TimePickerDialogX;

    invoke-static {v0}, Lzui/app/TimePickerDialogX;->access$100(Lzui/app/TimePickerDialogX;)Lzui/widget/NumberPickerX;

    move-result-object v1

    invoke-virtual {v1}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v1

    iget-object v2, p0, Lzui/app/TimePickerDialogX$2;->this$0:Lzui/app/TimePickerDialogX;

    .line 126
    invoke-static {v2}, Lzui/app/TimePickerDialogX;->access$200(Lzui/app/TimePickerDialogX;)Lzui/widget/NumberPickerX;

    move-result-object v2

    invoke-virtual {v2}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v2

    iget-object v3, p0, Lzui/app/TimePickerDialogX$2;->this$0:Lzui/app/TimePickerDialogX;

    invoke-static {v3}, Lzui/app/TimePickerDialogX;->access$300(Lzui/app/TimePickerDialogX;)Z

    move-result v3

    .line 125
    invoke-interface {p1, v0, v1, v2, v3}, Lzui/app/TimePickerDialogX$OnTimeSetListener;->onTimeSet(Lzui/app/TimePickerDialogX;IIZ)V

    .line 128
    :cond_0
    iget-object p1, p0, Lzui/app/TimePickerDialogX$2;->this$0:Lzui/app/TimePickerDialogX;

    invoke-virtual {p1}, Lzui/app/TimePickerDialogX;->dismiss()V

    return-void
.end method
