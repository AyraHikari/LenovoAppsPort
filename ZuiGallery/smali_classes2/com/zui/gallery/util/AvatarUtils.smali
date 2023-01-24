.class public final Lcom/zui/gallery/util/AvatarUtils;
.super Ljava/lang/Object;
.source "AvatarUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/util/AvatarUtils$Action;,
        Lcom/zui/gallery/util/AvatarUtils$Catagory;
    }
.end annotation


# static fields
.field private static final AVATAR_KEY:Ljava/lang/String; = "CM9CKFZ88409"

.field private static final CHANNAL_ID:Ljava/lang/String; = "Gallery2020"

.field private static final MAX_PARARM_COUNT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AvatarUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 9

    .line 37
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const-string v6, "13.5.1.0174.220803.8222e3a"

    const v7, 0x166bc9e

    .line 43
    invoke-static {}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->getInstance()Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    move-result-object v3

    const-string v5, "CM9CKFZ88409"

    const-string v8, "Gallery2020"

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "AvatarUtils"

    const-string v1, "start avatar exception "

    .line 46
    invoke-static {v0, v1, p0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 2

    .line 93
    :try_start_0
    invoke-static {}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->getInstance()Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->destroy(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "AvatarUtils"

    const-string v1, "stop avatar exception "

    .line 95
    invoke-static {v0, v1, p0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V
    .locals 1

    .line 59
    invoke-static {}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->getInstance()Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/gallery/util/AvatarUtils$Catagory;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zui/gallery/util/AvatarUtils$Action;->getName()Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    return-void
.end method

.method public static trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;ILjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/util/AvatarUtils$Catagory;",
            "Lcom/zui/gallery/util/AvatarUtils$Action;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p4, :cond_3

    .line 72
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 73
    new-instance v6, Lcom/zui/xlog/sdk/ParamMap;

    invoke-direct {v6}, Lcom/zui/xlog/sdk/ParamMap;-><init>()V

    const/4 v0, 0x0

    .line 75
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/4 v2, 0x4

    if-le v0, v2, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v0, v2, v1}, Lcom/zui/xlog/sdk/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_1
    :goto_1
    invoke-static {}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->getInstance()Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zui/gallery/util/AvatarUtils$Catagory;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zui/gallery/util/AvatarUtils$Action;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez p2, :cond_2

    const-string p2, ""

    :cond_2
    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/zui/xlog/sdk/ParamMap;)I

    goto :goto_2

    .line 84
    :cond_3
    invoke-static {p0, p1, p2, p3}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    :goto_2
    return-void
.end method
