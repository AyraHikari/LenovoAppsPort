.class public final enum Ljp/wasabeef/glide/transformations/CropTransformation$CropType;
.super Ljava/lang/Enum;
.source "CropTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/wasabeef/glide/transformations/CropTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CropType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljp/wasabeef/glide/transformations/CropTransformation$CropType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

.field public static final enum BOTTOM:Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

.field public static final enum CENTER:Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

.field public static final enum TOP:Ljp/wasabeef/glide/transformations/CropTransformation$CropType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 32
    new-instance v0, Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljp/wasabeef/glide/transformations/CropTransformation$CropType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/wasabeef/glide/transformations/CropTransformation$CropType;->TOP:Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

    .line 33
    new-instance v0, Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

    const-string v1, "CENTER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljp/wasabeef/glide/transformations/CropTransformation$CropType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/wasabeef/glide/transformations/CropTransformation$CropType;->CENTER:Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

    .line 34
    new-instance v0, Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

    const-string v1, "BOTTOM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljp/wasabeef/glide/transformations/CropTransformation$CropType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/wasabeef/glide/transformations/CropTransformation$CropType;->BOTTOM:Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

    const/4 v1, 0x3

    new-array v1, v1, [Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

    .line 31
    sget-object v5, Ljp/wasabeef/glide/transformations/CropTransformation$CropType;->TOP:Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

    aput-object v5, v1, v2

    sget-object v2, Ljp/wasabeef/glide/transformations/CropTransformation$CropType;->CENTER:Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Ljp/wasabeef/glide/transformations/CropTransformation$CropType;->$VALUES:[Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljp/wasabeef/glide/transformations/CropTransformation$CropType;
    .locals 1

    .line 31
    const-class v0, Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

    return-object p0
.end method

.method public static values()[Ljp/wasabeef/glide/transformations/CropTransformation$CropType;
    .locals 1

    .line 31
    sget-object v0, Ljp/wasabeef/glide/transformations/CropTransformation$CropType;->$VALUES:[Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

    invoke-virtual {v0}, [Ljp/wasabeef/glide/transformations/CropTransformation$CropType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

    return-object v0
.end method
