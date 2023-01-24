.class Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;
.super Ljava/lang/Object;
.source "ImageCaption.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->setCaptionRepresentation(Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;Lcom/zui/gallery/filtershow/caption/view/DrawRect;Lcom/zui/gallery/filtershow/imageshow/ImageShow;Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

.field final synthetic val$captionRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

.field final synthetic val$masterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;Lcom/zui/gallery/filtershow/imageshow/MasterImage;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->val$captionRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    iput-object p3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->val$masterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlignClick(Z)V
    .locals 4

    .line 318
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$1200(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 320
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$400(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 321
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$400(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->getTextAlignment()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 332
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$400(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->setTextAlignment(I)V

    .line 333
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$1000(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/zui/gallery/filtershow/caption/view/DrawRect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->setAlignIndex(I)V

    goto :goto_0

    .line 328
    :cond_2
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$400(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->setTextAlignment(I)V

    .line 329
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$1000(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/zui/gallery/filtershow/caption/view/DrawRect;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->setAlignIndex(I)V

    goto :goto_0

    .line 324
    :cond_3
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v3}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$400(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->setTextAlignment(I)V

    .line 325
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v3}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$1000(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/zui/gallery/filtershow/caption/view/DrawRect;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->setAlignIndex(I)V

    .line 336
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$400(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->getCaptionBoundingVertices(I)Ljava/util/List;

    move-result-object v1

    .line 337
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v2}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$1000(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/zui/gallery/filtershow/caption/view/DrawRect;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v3, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$500(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->setDrawRect(Ljava/util/List;I)V

    .line 346
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->val$masterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->notifyObservers()V

    .line 349
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->val$captionRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setCaptionTextAlignment(I)V

    .line 350
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->val$captionRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$400(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->getCaptionTranslation()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setmTimeLinePointF(Landroid/graphics/PointF;)V

    .line 351
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->val$captionRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setCurrentFilterRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 352
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$1100(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/zui/gallery/filtershow/editors/EditorCaption;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->val$captionRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/editors/EditorCaption;->setLocalRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    :cond_4
    return-void
.end method

.method public onBeyondDrawRectClick()V
    .locals 0

    return-void
.end method

.method public onDel()V
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$1000(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/zui/gallery/filtershow/caption/view/DrawRect;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->setDrawRect(Ljava/util/List;I)V

    .line 299
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$1000(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/zui/gallery/filtershow/caption/view/DrawRect;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/zui/gallery/util/GroupUtils;->setCaptionDeleteClicked(Landroid/content/Context;Z)V

    .line 305
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$1100(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/zui/gallery/filtershow/editors/EditorCaption;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/editors/EditorCaption;->setLocalRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 306
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->val$captionRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->deleteCurrentCaptionRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 307
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$1100(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/zui/gallery/filtershow/editors/EditorCaption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/editors/EditorCaption;->commitLocalRepresentation()V

    .line 308
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->invalidate()V

    return-void
.end method

.method public onDrag(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 11

    .line 141
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$000(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/GroupUtils;->enterDragState(Landroid/content/Context;Z)V

    .line 142
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$000(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/zui/gallery/util/GroupUtils;->setDrawRectMovingState(Landroid/content/Context;Z)V

    .line 143
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$100(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 144
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v0, p2}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$100(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    .line 145
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p1

    invoke-direct {v0, v1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "timeLinePointF.x is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " && bitmapWidthOnenInTwo is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$200(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " && timeLinePointF.y is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " && bitmapHeightOnenInTwo is "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    .line 148
    invoke-static {v2}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$300(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "wangcanpos"

    .line 147
    invoke-static {v2, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget p1, v0, Landroid/graphics/PointF;->x:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v3}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$200(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float p1, p1, v3

    if-gtz p1, :cond_b

    iget p1, v0, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v3}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$300(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float p1, p1, v3

    if-lez p1, :cond_0

    goto/16 :goto_0

    .line 152
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget p1, v0, Landroid/graphics/PointF;->x:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v3, 0x437a0000    # 250.0f

    cmpl-float p1, p1, v3

    if-gtz p1, :cond_b

    iget p1, v0, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v3

    if-lez p1, :cond_1

    goto/16 :goto_0

    .line 157
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$400(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->getCaptionBoundingVertices(I)Ljava/util/List;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$500(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 160
    :cond_2
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v3}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$000(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    const/4 v5, 0x0

    .line 161
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget v7, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v7

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    int-to-float v3, v3

    add-float/2addr v7, v3

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget v9, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v9

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v9, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v9

    add-float/2addr p1, v3

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "xMinLoc is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " && xMaxLoc is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " && yMinLoc is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " && yMaxLoc is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v10, 0x3f800000    # 1.0f

    if-gez v1, :cond_4

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$600(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)F

    move-result v1

    sub-float v1, v6, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v10

    if-ltz v1, :cond_3

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$600(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)F

    move-result v1

    sub-float/2addr v1, v9

    cmpg-float v1, v6, v1

    if-gez v1, :cond_4

    :cond_3
    const-string v1, "11111111"

    .line 168
    invoke-static {v2, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget v1, v0, Landroid/graphics/PointF;->x:F

    neg-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_4
    iget v1, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$700(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)F

    move-result v1

    sub-float/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v10

    if-ltz v1, :cond_5

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$700(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)F

    move-result v1

    add-float/2addr v1, v9

    cmpl-float v1, v8, v1

    if-lez v1, :cond_6

    :cond_5
    const-string v1, "22222222"

    .line 173
    invoke-static {v2, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget v1, v0, Landroid/graphics/PointF;->x:F

    neg-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_6
    iget p2, v0, Landroid/graphics/PointF;->y:F

    cmpl-float p2, p2, v3

    const-string/jumbo v1, "timeLinePointF.y is "

    if-lez p2, :cond_8

    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {p2}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$800(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)F

    move-result p2

    sub-float p2, v7, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, p2, v10

    if-ltz p2, :cond_7

    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {p2}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$800(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)F

    move-result p2

    sub-float/2addr p2, v9

    cmpg-float p2, v7, p2

    if-gez p2, :cond_8

    :cond_7
    const-string p2, "333333333"

    .line 178
    invoke-static {v2, p2}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget p2, v0, Landroid/graphics/PointF;->y:F

    neg-float p2, p2

    iput p2, v0, Landroid/graphics/PointF;->y:F

    .line 180
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_8
    iget p2, v0, Landroid/graphics/PointF;->y:F

    cmpg-float p2, p2, v3

    if-gez p2, :cond_a

    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {p2}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$900(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)F

    move-result p2

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, p2, v10

    if-ltz p2, :cond_9

    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {p2}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$900(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)F

    move-result p2

    add-float/2addr p2, v9

    cmpl-float p1, p1, p2

    if-lez p1, :cond_a

    :cond_9
    const-string p1, "44444444"

    .line 183
    invoke-static {v2, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget p1, v0, Landroid/graphics/PointF;->y:F

    neg-float p1, p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    .line 185
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_a
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$400(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->translateCaption(Landroid/graphics/PointF;)V

    .line 211
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$400(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->getCaptionTranslation()Landroid/graphics/PointF;

    .line 213
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$400(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->getCaptionBoundingVertices(I)Ljava/util/List;

    move-result-object p1

    .line 214
    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {p2}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$1000(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/zui/gallery/filtershow/caption/view/DrawRect;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$500(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1, v5}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->setDrawRect(Ljava/util/List;I)V

    .line 216
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->val$captionRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {p2}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$400(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object p2

    invoke-virtual {p2}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->getCaptionTranslation()Landroid/graphics/PointF;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setmTimeLinePointF(Landroid/graphics/PointF;)V

    .line 218
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->val$captionRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->refreshCurrentFilterRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 219
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$1100(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/zui/gallery/filtershow/editors/EditorCaption;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->val$captionRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/editors/EditorCaption;->setLocalRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 221
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$1100(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/zui/gallery/filtershow/editors/EditorCaption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/EditorCaption;->commitLocalRepresentation()V

    .line 222
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->invalidate()V

    :cond_b
    :goto_0
    return-void
.end method

.method public onHorizontalFlipClick()V
    .locals 0

    return-void
.end method

.method public onOrientationChange(Z)V
    .locals 3

    .line 360
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$400(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$400(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->setVerticalLayout(Z)V

    .line 362
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$400(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->getCaptionBoundingVertices(I)Ljava/util/List;

    move-result-object v0

    .line 363
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$1000(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/zui/gallery/filtershow/caption/view/DrawRect;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v2, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$500(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->setDrawRect(Ljava/util/List;I)V

    .line 378
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->val$captionRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setHorizontal(Z)V

    .line 379
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->val$captionRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$400(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->getCaptionTranslation()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setmTimeLinePointF(Landroid/graphics/PointF;)V

    .line 380
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->val$captionRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setCurrentFilterRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 381
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$1100(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/zui/gallery/filtershow/editors/EditorCaption;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->val$captionRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/editors/EditorCaption;->setLocalRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    :cond_0
    return-void
.end method

.method public onScaleAndRotate(FLandroid/graphics/PointF;)V
    .locals 4

    .line 251
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$000(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/GroupUtils;->setDrawRectMovingState(Landroid/content/Context;Z)V

    .line 252
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v0, p2}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$100(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    .line 253
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$400(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$400(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->scaleCaption(FLandroid/graphics/PointF;)V

    .line 255
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$400(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->getCaptionBoundingVertices(I)Ljava/util/List;

    move-result-object p1

    .line 256
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v2, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$500(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 257
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 258
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 262
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v3}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$000(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/gallery/util/GroupUtils;->getActualWidthInCaption(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$000(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/util/GroupUtils;->getActualHeightInCaption(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$1000(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/zui/gallery/filtershow/caption/view/DrawRect;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->setDrawRect(Ljava/util/List;I)V

    .line 279
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ImageCaption...getScaleX is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$400(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->getScaleX()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " && mCaptionEffect.getScaleY() is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$400(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->getScaleY()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "wangcanlocation"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->val$captionRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$400(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->getScaleX()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setScaleFactor(F)V

    .line 281
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->val$captionRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setAssetAnchor(Landroid/graphics/PointF;)V

    .line 283
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->val$captionRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->refreshCurrentFilterRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 284
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$1100(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/zui/gallery/filtershow/editors/EditorCaption;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->val$captionRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/editors/EditorCaption;->setLocalRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 286
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$1100(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/zui/gallery/filtershow/editors/EditorCaption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/EditorCaption;->commitLocalRepresentation()V

    .line 287
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->invalidate()V

    goto :goto_1

    .line 263
    :cond_1
    :goto_0
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/gallery/util/GroupUtils;->getScaleFactorForLongScreentShot(Landroid/content/Context;)F

    move-result p1

    .line 264
    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {p2}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$400(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->setScaleX(F)V

    .line 265
    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {p2}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$400(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->setScaleY(F)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onScaleXandY(FFLandroid/graphics/PointF;)V
    .locals 0

    return-void
.end method

.method public onTouchDown(Landroid/graphics/PointF;)V
    .locals 0

    return-void
.end method
