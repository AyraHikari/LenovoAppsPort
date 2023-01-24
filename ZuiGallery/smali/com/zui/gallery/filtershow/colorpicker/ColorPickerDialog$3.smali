.class Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog$3;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/colorpicker/ColorListener;


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

    .line 86
    iput-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog$3;->this$0:Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addColorListener(Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V
    .locals 0

    return-void
.end method

.method public setColor([F)V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog$3;->this$0:Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;

    iget-object v0, v0, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->mHSVO:[F

    iget-object v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog$3;->this$0:Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;

    iget-object v1, v1, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->mHSVO:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 91
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog$3;->this$0:Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;

    iget-object v1, v0, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->mSelectedButton:Landroid/widget/ToggleButton;

    invoke-static {v0, v1, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->access$000(Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;Landroid/widget/ToggleButton;[F)V

    return-void
.end method
