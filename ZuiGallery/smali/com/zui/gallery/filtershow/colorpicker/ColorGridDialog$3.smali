.class Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog$3;
.super Ljava/lang/Object;
.source "ColorGridDialog.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/colorpicker/ColorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog;->showColorPicker()V
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

    .line 87
    iput-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog$3;->this$0:Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addColorListener(Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V
    .locals 0

    return-void
.end method

.method public setColor([F)V
    .locals 2

    .line 90
    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    const/4 v1, 0x3

    .line 91
    aget p1, p1, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v0

    .line 93
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog$3;->this$0:Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog;

    iget-object v0, v0, Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog;->mCallback:Lcom/zui/gallery/filtershow/colorpicker/RGBListener;

    invoke-interface {v0, p1}, Lcom/zui/gallery/filtershow/colorpicker/RGBListener;->setColor(I)V

    return-void
.end method
