.class public final enum Landroidx/renderscript/Type$CubemapFace;
.super Ljava/lang/Enum;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/renderscript/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CubemapFace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/renderscript/Type$CubemapFace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Landroidx/renderscript/Type$CubemapFace;

.field public static final enum NEGATIVE_X:Landroidx/renderscript/Type$CubemapFace;

.field public static final enum NEGATIVE_Y:Landroidx/renderscript/Type$CubemapFace;

.field public static final enum NEGATIVE_Z:Landroidx/renderscript/Type$CubemapFace;

.field public static final enum POSITIVE_X:Landroidx/renderscript/Type$CubemapFace;

.field public static final enum POSITIVE_Y:Landroidx/renderscript/Type$CubemapFace;

.field public static final enum POSITIVE_Z:Landroidx/renderscript/Type$CubemapFace;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 65
    new-instance v0, Landroidx/renderscript/Type$CubemapFace;

    const-string v1, "POSITIVE_X"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/renderscript/Type$CubemapFace;->POSITIVE_X:Landroidx/renderscript/Type$CubemapFace;

    .line 66
    new-instance v0, Landroidx/renderscript/Type$CubemapFace;

    const-string v1, "NEGATIVE_X"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Landroidx/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/renderscript/Type$CubemapFace;->NEGATIVE_X:Landroidx/renderscript/Type$CubemapFace;

    .line 67
    new-instance v0, Landroidx/renderscript/Type$CubemapFace;

    const-string v1, "POSITIVE_Y"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Landroidx/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/renderscript/Type$CubemapFace;->POSITIVE_Y:Landroidx/renderscript/Type$CubemapFace;

    .line 68
    new-instance v0, Landroidx/renderscript/Type$CubemapFace;

    const-string v1, "NEGATIVE_Y"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Landroidx/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/renderscript/Type$CubemapFace;->NEGATIVE_Y:Landroidx/renderscript/Type$CubemapFace;

    .line 69
    new-instance v0, Landroidx/renderscript/Type$CubemapFace;

    const-string v1, "POSITIVE_Z"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Landroidx/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/renderscript/Type$CubemapFace;->POSITIVE_Z:Landroidx/renderscript/Type$CubemapFace;

    .line 70
    new-instance v0, Landroidx/renderscript/Type$CubemapFace;

    const-string v1, "NEGATIVE_Z"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Landroidx/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/renderscript/Type$CubemapFace;->NEGATIVE_Z:Landroidx/renderscript/Type$CubemapFace;

    const/4 v1, 0x6

    new-array v1, v1, [Landroidx/renderscript/Type$CubemapFace;

    .line 64
    sget-object v8, Landroidx/renderscript/Type$CubemapFace;->POSITIVE_X:Landroidx/renderscript/Type$CubemapFace;

    aput-object v8, v1, v2

    sget-object v2, Landroidx/renderscript/Type$CubemapFace;->NEGATIVE_X:Landroidx/renderscript/Type$CubemapFace;

    aput-object v2, v1, v3

    sget-object v2, Landroidx/renderscript/Type$CubemapFace;->POSITIVE_Y:Landroidx/renderscript/Type$CubemapFace;

    aput-object v2, v1, v4

    sget-object v2, Landroidx/renderscript/Type$CubemapFace;->NEGATIVE_Y:Landroidx/renderscript/Type$CubemapFace;

    aput-object v2, v1, v5

    sget-object v2, Landroidx/renderscript/Type$CubemapFace;->POSITIVE_Z:Landroidx/renderscript/Type$CubemapFace;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Landroidx/renderscript/Type$CubemapFace;->ENUM$VALUES:[Landroidx/renderscript/Type$CubemapFace;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput p3, p0, Landroidx/renderscript/Type$CubemapFace;->mID:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/renderscript/Type$CubemapFace;
    .locals 1

    .line 1
    const-class v0, Landroidx/renderscript/Type$CubemapFace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/renderscript/Type$CubemapFace;

    return-object p0
.end method

.method public static values()[Landroidx/renderscript/Type$CubemapFace;
    .locals 4

    .line 1
    sget-object v0, Landroidx/renderscript/Type$CubemapFace;->ENUM$VALUES:[Landroidx/renderscript/Type$CubemapFace;

    array-length v1, v0

    new-array v2, v1, [Landroidx/renderscript/Type$CubemapFace;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
