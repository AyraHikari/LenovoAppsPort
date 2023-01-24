.class Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog$2;
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


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog$2;->this$0:Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog$2;->this$0:Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog;->showColorPicker()V

    .line 68
    iget-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog$2;->this$0:Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog;->dismiss()V

    return-void
.end method
