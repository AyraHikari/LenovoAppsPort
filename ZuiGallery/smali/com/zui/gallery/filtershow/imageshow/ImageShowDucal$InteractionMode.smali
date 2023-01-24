.class final enum Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;
.super Ljava/lang/Enum;
.source "ImageShowDucal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InteractionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

.field public static final enum MOVE:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

.field public static final enum NONE:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

.field public static final enum SCALE:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 42
    new-instance v0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;->NONE:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

    .line 43
    new-instance v0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

    const-string v1, "SCALE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;->SCALE:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

    .line 44
    new-instance v0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

    const-string v1, "MOVE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;->MOVE:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

    .line 41
    sget-object v5, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;->NONE:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

    aput-object v5, v1, v2

    sget-object v2, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;->SCALE:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;->$VALUES:[Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;
    .locals 1

    .line 41
    const-class v0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

    return-object p0
.end method

.method public static values()[Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;
    .locals 1

    .line 41
    sget-object v0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;->$VALUES:[Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

    invoke-virtual {v0}, [Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

    return-object v0
.end method
