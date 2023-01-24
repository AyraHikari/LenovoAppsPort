.class Lcom/zui/gallery/filtershow/controller/ColorChooserDraw$1;
.super Ljava/lang/Object;
.source "ColorChooserDraw.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/colorpicker/ColorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->showColorPicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw$1;->this$0:Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;

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

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ovwrerrr"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw: color "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->colorPos:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    const/16 v1, 0x64

    iput v1, v0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->hsvos:I

    .line 149
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    sget v1, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->colorPos:F

    iput v1, v0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->hsvoIndex:F

    .line 155
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw$1;->this$0:Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->changeSelectedColor([F)V

    return-void
.end method
