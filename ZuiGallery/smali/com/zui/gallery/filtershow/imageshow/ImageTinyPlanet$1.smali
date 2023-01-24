.class Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet$1;
.super Ljava/lang/Object;
.source "ImageTinyPlanet.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mScale:F

.field final synthetic this$0:Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x42c80000    # 100.0f

    .line 49
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet$1;->mScale:F

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->access$000(Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;)Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->getValue()I

    .line 65
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet$1;->mScale:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet$1;->mScale:F

    float-to-int p1, v0

    .line 67
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->access$000(Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;)Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->getMaximum()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 68
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->access$000(Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;)Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->getMinimum()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 69
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->access$000(Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;)Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->setValue(I)V

    .line 70
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->invalidate()V

    .line 71
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->access$100(Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;)Lcom/zui/gallery/filtershow/editors/EditorTinyPlanet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/EditorTinyPlanet;->commitLocalRepresentation()V

    .line 72
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->access$100(Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;)Lcom/zui/gallery/filtershow/editors/EditorTinyPlanet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/EditorTinyPlanet;->updateUI()V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .line 57
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mInScale:Z

    .line 58
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->access$000(Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;)Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->getValue()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet$1;->mScale:F

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    .line 52
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mInScale:Z

    return-void
.end method
