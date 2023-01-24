.class public final enum Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;
.super Ljava/lang/Enum;
.source "DualCameraNativeEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DdmStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;

.field public static final enum DDM_FAILED:Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;

.field public static final enum DDM_IDLE:Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;

.field public static final enum DDM_LOADED:Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;

.field public static final enum DDM_LOADING:Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;

.field public static final enum DDM_PARSING:Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 57
    new-instance v0, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;

    const-string v1, "DDM_IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;->DDM_IDLE:Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;

    .line 58
    new-instance v0, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;

    const-string v1, "DDM_PARSING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;->DDM_PARSING:Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;

    .line 59
    new-instance v0, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;

    const-string v1, "DDM_LOADING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;->DDM_LOADING:Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;

    .line 60
    new-instance v0, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;

    const-string v1, "DDM_LOADED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;->DDM_LOADED:Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;

    .line 61
    new-instance v0, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;

    const-string v1, "DDM_FAILED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;->DDM_FAILED:Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;

    .line 56
    sget-object v7, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;->DDM_IDLE:Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;

    aput-object v7, v1, v2

    sget-object v2, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;->DDM_PARSING:Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;->DDM_LOADING:Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;->DDM_LOADED:Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;->$VALUES:[Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;
    .locals 1

    .line 56
    const-class v0, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;

    return-object p0
.end method

.method public static values()[Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;
    .locals 1

    .line 56
    sget-object v0, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;->$VALUES:[Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;

    invoke-virtual {v0}, [Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;

    return-object v0
.end method
