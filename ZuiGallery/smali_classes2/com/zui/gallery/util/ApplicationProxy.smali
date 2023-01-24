.class public Lcom/zui/gallery/util/ApplicationProxy;
.super Ljava/lang/Object;
.source "ApplicationProxy.java"


# static fields
.field public static mApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .line 16
    sget-object v0, Lcom/zui/gallery/util/ApplicationProxy;->mApplication:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 17
    invoke-static {}, Lcom/zui/gallery/util/ApplicationProxy;->getApplicationInner()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/util/ApplicationProxy;->mApplication:Landroid/app/Application;

    .line 19
    :cond_0
    sget-object v0, Lcom/zui/gallery/util/ApplicationProxy;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static getApplicationInner()Landroid/app/Application;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    .line 24
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 26
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v4, "currentActivityThread"

    new-array v5, v3, [Ljava/lang/Class;

    .line 27
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    .line 29
    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    .line 30
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 32
    check-cast v1, Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 0

    .line 12
    sput-object p0, Lcom/zui/gallery/util/ApplicationProxy;->mApplication:Landroid/app/Application;

    return-void
.end method
