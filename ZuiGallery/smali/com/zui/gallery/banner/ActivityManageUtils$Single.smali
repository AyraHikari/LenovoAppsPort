.class Lcom/zui/gallery/banner/ActivityManageUtils$Single;
.super Ljava/lang/Object;
.source "ActivityManageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/banner/ActivityManageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Single"
.end annotation


# static fields
.field private static activityManageUtils:Lcom/zui/gallery/banner/ActivityManageUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/zui/gallery/banner/ActivityManageUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zui/gallery/banner/ActivityManageUtils;-><init>(Lcom/zui/gallery/banner/ActivityManageUtils$1;)V

    sput-object v0, Lcom/zui/gallery/banner/ActivityManageUtils$Single;->activityManageUtils:Lcom/zui/gallery/banner/ActivityManageUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/zui/gallery/banner/ActivityManageUtils;
    .locals 1

    .line 22
    sget-object v0, Lcom/zui/gallery/banner/ActivityManageUtils$Single;->activityManageUtils:Lcom/zui/gallery/banner/ActivityManageUtils;

    return-object v0
.end method
