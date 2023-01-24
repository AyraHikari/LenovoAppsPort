.class public Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;
.super Ljava/lang/Object;
.source "FilterDrawRepresentation.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrokeData"
.end annotation


# instance fields
.field public isEasrea:Z

.field public isMosaic:Z

.field public mColor:I

.field public mPath:Landroid/graphics/Path;

.field public mPoints:[F

.field public mRadius:F

.field public mRadiusMosaic:F

.field public mType:B

.field public noPoints:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 118
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->noPoints:I

    const/4 v1, 0x1

    .line 120
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->isMosaic:Z

    .line 122
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->isEasrea:Z

    const/16 v0, 0x14

    new-array v0, v0, [F

    .line 124
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPoints:[F

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;)V
    .locals 2

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 118
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->noPoints:I

    const/4 v1, 0x1

    .line 120
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->isMosaic:Z

    .line 122
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->isEasrea:Z

    const/16 v0, 0x14

    new-array v0, v0, [F

    .line 124
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPoints:[F

    .line 130
    iget-byte v0, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mType:B

    iput-byte v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mType:B

    .line 131
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPath:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPath:Landroid/graphics/Path;

    .line 132
    iget v0, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadius:F

    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadius:F

    .line 133
    iget v0, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mColor:I

    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mColor:I

    .line 135
    iget-boolean v0, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->isMosaic:Z

    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->isMosaic:Z

    .line 136
    iget v0, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadiusMosaic:F

    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadiusMosaic:F

    .line 137
    iget-boolean v0, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->isEasrea:Z

    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->isEasrea:Z

    .line 139
    iget v0, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->noPoints:I

    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->noPoints:I

    .line 140
    iget-object p1, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPoints:[F

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPoints:[F

    return-void
.end method


# virtual methods
.method public clone()Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 170
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->clone()Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 145
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 148
    :cond_0
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    .line 149
    iget-byte v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mType:B

    iget-byte v2, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mType:B

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadius:F

    iget v2, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadius:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->noPoints:I

    iget v2, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->noPoints:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mColor:I

    iget v2, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mColor:I

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->isMosaic:Z

    iget-boolean v2, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->isMosaic:Z

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->isEasrea:Z

    iget-boolean v2, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->isEasrea:Z

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadiusMosaic:F

    iget v2, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadiusMosaic:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    goto :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPath:Landroid/graphics/Path;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stroke("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", path("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mColor:I

    .line 165
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
