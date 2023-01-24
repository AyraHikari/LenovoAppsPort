.class final enum Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;
.super Ljava/lang/Enum;
.source "PanoramaPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/PanoramaPhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DeviceOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

.field public static final enum CLOCKWISE_0:Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

.field public static final enum CLOCKWISE_180:Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

.field public static final enum CLOCKWISE_270:Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

.field public static final enum CLOCKWISE_90:Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;


# instance fields
.field private final mDegrees:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 671
    new-instance v0, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    const-string v1, "CLOCKWISE_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;->CLOCKWISE_0:Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    .line 672
    new-instance v0, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    const-string v1, "CLOCKWISE_90"

    const/4 v3, 0x1

    const/16 v4, 0x5a

    invoke-direct {v0, v1, v3, v4}, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;->CLOCKWISE_90:Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    .line 673
    new-instance v0, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    const-string v1, "CLOCKWISE_180"

    const/4 v4, 0x2

    const/16 v5, 0xb4

    invoke-direct {v0, v1, v4, v5}, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;->CLOCKWISE_180:Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    .line 674
    new-instance v0, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    const-string v1, "CLOCKWISE_270"

    const/4 v5, 0x3

    const/16 v6, 0x10e

    invoke-direct {v0, v1, v5, v6}, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;->CLOCKWISE_270:Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    .line 670
    sget-object v6, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;->CLOCKWISE_0:Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    aput-object v6, v1, v2

    sget-object v2, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;->CLOCKWISE_90:Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;->CLOCKWISE_180:Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;->$VALUES:[Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 678
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 679
    iput p3, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;->mDegrees:I

    return-void
.end method

.method public static from(I)Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;
    .locals 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_8

    if-eqz p0, :cond_7

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_6

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_5

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_4

    .line 709
    div-int/lit16 v0, p0, 0x168

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x168

    add-int/lit16 v0, v0, 0x168

    add-int/2addr v0, p0

    rem-int/lit16 v0, v0, 0x168

    const/16 p0, 0x13b

    if-gt v0, p0, :cond_3

    const/16 p0, 0x2d

    if-gt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x87

    if-le v0, p0, :cond_1

    if-gt v0, v1, :cond_1

    .line 713
    sget-object p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;->CLOCKWISE_90:Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    return-object p0

    :cond_1
    if-le v0, v1, :cond_2

    const/16 p0, 0xe1

    if-gt v0, p0, :cond_2

    .line 715
    sget-object p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;->CLOCKWISE_180:Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    return-object p0

    .line 717
    :cond_2
    sget-object p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;->CLOCKWISE_270:Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    return-object p0

    .line 711
    :cond_3
    :goto_0
    sget-object p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;->CLOCKWISE_0:Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    return-object p0

    .line 707
    :cond_4
    sget-object p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;->CLOCKWISE_270:Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    return-object p0

    .line 705
    :cond_5
    sget-object p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;->CLOCKWISE_180:Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    return-object p0

    .line 703
    :cond_6
    sget-object p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;->CLOCKWISE_90:Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    return-object p0

    .line 701
    :cond_7
    sget-object p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;->CLOCKWISE_0:Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    return-object p0

    .line 699
    :cond_8
    sget-object p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;->CLOCKWISE_0:Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;
    .locals 1

    .line 670
    const-class v0, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    return-object p0
.end method

.method public static values()[Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;
    .locals 1

    .line 670
    sget-object v0, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;->$VALUES:[Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    invoke-virtual {v0}, [Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    return-object v0
.end method


# virtual methods
.method public getDegrees()I
    .locals 1

    .line 686
    iget v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;->mDegrees:I

    return v0
.end method
