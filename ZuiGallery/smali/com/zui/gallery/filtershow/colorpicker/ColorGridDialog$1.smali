.class Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog$1;
.super Ljava/lang/Object;
.source "ColorGridDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog;-><init>(Landroid/content/Context;Lcom/zui/gallery/filtershow/colorpicker/RGBListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog;

.field final synthetic val$c:I


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog;I)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog$1;->this$0:Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog;

    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog$1;->val$c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 55
    iget-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog$1;->this$0:Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog;->mCallback:Lcom/zui/gallery/filtershow/colorpicker/RGBListener;

    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog$1;->val$c:I

    invoke-interface {p1, v0}, Lcom/zui/gallery/filtershow/colorpicker/RGBListener;->setColor(I)V

    .line 56
    iget-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog$1;->this$0:Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog;->dismiss()V

    return-void
.end method
