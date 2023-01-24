.class Lzui/app/TimePickerDialogX$1;
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

    .line 114
    iput-object p1, p0, Lzui/app/TimePickerDialogX$1;->this$0:Lzui/app/TimePickerDialogX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 117
    iget-object p1, p0, Lzui/app/TimePickerDialogX$1;->this$0:Lzui/app/TimePickerDialogX;

    invoke-virtual {p1}, Lzui/app/TimePickerDialogX;->cancel()V

    return-void
.end method
