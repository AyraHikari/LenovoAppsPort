.class Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$SimpleDraw;
.super Ljava/lang/Object;
.source "ImageFilterDraw.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$DrawStyle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimpleDraw"
.end annotation


# instance fields
.field mMode:I

.field mType:B

.field final synthetic this$0:Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;I)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$SimpleDraw;->this$0:Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput p2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$SimpleDraw;->mMode:I

    return-void
.end method


# virtual methods
.method public paint(Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 126
    :cond_0
    iget-object p4, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPath:Landroid/graphics/Path;

    if-nez p4, :cond_1

    return-void

    .line 130
    :cond_1
    sget-boolean p4, Lcom/zui/gallery/filtershow/FilterShowActivity;->isSave:Z

    if-eqz p4, :cond_2

    .line 131
    iget-object p4, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$SimpleDraw;->this$0:Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;

    invoke-static {p4, p1, p2, p3}, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->access$000(Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 133
    :cond_2
    iget-object p4, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$SimpleDraw;->this$0:Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;

    invoke-static {p4, p1, p2, p3}, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->access$100(Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    :goto_0
    return-void
.end method

.method public setType(B)V
    .locals 0

    .line 117
    iput-byte p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$SimpleDraw;->mType:B

    return-void
.end method
