.class final enum Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;
.super Ljava/lang/Enum;
.source "ImageStraighten.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MODES"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;

.field public static final enum MOVE:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;

.field public static final enum NONE:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 57
    new-instance v0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;->NONE:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;

    new-instance v0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;

    const-string v1, "MOVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;->MOVE:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;

    .line 56
    sget-object v4, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;->NONE:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;->$VALUES:[Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;
    .locals 1

    .line 56
    const-class v0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;

    return-object p0
.end method

.method public static values()[Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;
    .locals 1

    .line 56
    sget-object v0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;->$VALUES:[Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;

    invoke-virtual {v0}, [Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;

    return-object v0
.end method
