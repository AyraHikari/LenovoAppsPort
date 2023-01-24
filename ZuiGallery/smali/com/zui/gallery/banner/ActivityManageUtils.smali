.class public Lcom/zui/gallery/banner/ActivityManageUtils;
.super Ljava/lang/Object;
.source "ActivityManageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/banner/ActivityManageUtils$Single;
    }
.end annotation


# instance fields
.field private mActivities:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/app/Activity;",
            "Lcom/zui/gallery/banner/MonitorHomeReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/banner/ActivityManageUtils;->mActivities:Ljava/util/LinkedHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/banner/ActivityManageUtils$1;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/zui/gallery/banner/ActivityManageUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/zui/gallery/banner/ActivityManageUtils;
    .locals 1

    .line 27
    invoke-static {}, Lcom/zui/gallery/banner/ActivityManageUtils$Single;->access$100()Lcom/zui/gallery/banner/ActivityManageUtils;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;Lcom/zui/gallery/banner/MonitorHomeReceiver;)V
    .locals 2

    .line 31
    invoke-virtual {p0}, Lcom/zui/gallery/banner/ActivityManageUtils;->get()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 32
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public get()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Landroid/app/Activity;",
            "Lcom/zui/gallery/banner/MonitorHomeReceiver;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/zui/gallery/banner/ActivityManageUtils;->mActivities:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/banner/ActivityManageUtils;->mActivities:Ljava/util/LinkedHashMap;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/banner/ActivityManageUtils;->mActivities:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public removeActivity(Landroid/app/Activity;)V
    .locals 2

    .line 37
    invoke-virtual {p0}, Lcom/zui/gallery/banner/ActivityManageUtils;->get()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 38
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
