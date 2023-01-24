.class Lcom/zui/gallery/filtershow/FocusActivity$2;
.super Ljava/lang/Object;
.source "FocusActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/FocusActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/FocusActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/FocusActivity;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$2;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 196
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$2;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FocusActivity;->access$300(Lcom/zui/gallery/filtershow/FocusActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity$2;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-static {v0, p1}, Lcom/zui/gallery/filtershow/FocusActivity;->access$400(Lcom/zui/gallery/filtershow/FocusActivity;I)V

    return-void
.end method
