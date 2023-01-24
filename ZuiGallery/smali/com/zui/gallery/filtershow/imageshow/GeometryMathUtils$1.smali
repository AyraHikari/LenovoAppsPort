.class synthetic Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$1;
.super Ljava/lang/Object;
.source "GeometryMathUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$zui$gallery$filtershow$filters$FilterRotateRepresentation$Rotation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 482
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->values()[Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$1;->$SwitchMap$com$zui$gallery$filtershow$filters$FilterRotateRepresentation$Rotation:[I

    :try_start_0
    sget-object v1, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->NINETY:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$1;->$SwitchMap$com$zui$gallery$filtershow$filters$FilterRotateRepresentation$Rotation:[I

    sget-object v1, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->TWO_SEVENTY:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
