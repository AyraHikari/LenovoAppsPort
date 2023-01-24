.class Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog$1;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;-><init>(Landroid/content/Context;Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;

.field final synthetic val$cl:Lcom/zui/gallery/filtershow/colorpicker/ColorListener;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog$1;->this$0:Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog$1;->val$cl:Lcom/zui/gallery/filtershow/colorpicker/ColorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 65
    iget-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog$1;->val$cl:Lcom/zui/gallery/filtershow/colorpicker/ColorListener;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog$1;->this$0:Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;

    iget-object v0, v0, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->mHSVO:[F

    invoke-interface {p1, v0}, Lcom/zui/gallery/filtershow/colorpicker/ColorListener;->setColor([F)V

    .line 66
    iget-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog$1;->this$0:Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->dismiss()V

    return-void
.end method
