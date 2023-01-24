.class Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog$2;
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


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog$2;->this$0:Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 72
    iget-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog$2;->this$0:Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->dismiss()V

    return-void
.end method
