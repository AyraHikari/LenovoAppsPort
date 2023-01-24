.class final enum Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;
.super Ljava/lang/Enum;
.source "PanoramaPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/PanoramaPhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Rotation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;

.field public static final enum left:Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;

.field public static final enum right:Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 620
    new-instance v0, Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;

    const-string v1, "left"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;->left:Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;

    new-instance v0, Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;

    const-string v1, "right"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;->right:Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;

    .line 619
    sget-object v4, Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;->left:Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;->$VALUES:[Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 619
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;
    .locals 1

    .line 619
    const-class v0, Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;

    return-object p0
.end method

.method public static values()[Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;
    .locals 1

    .line 619
    sget-object v0, Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;->$VALUES:[Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;

    invoke-virtual {v0}, [Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;

    return-object v0
.end method
