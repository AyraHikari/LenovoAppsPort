.class public Lcom/zui/gallery/app/GalleryScreenObserver;
.super Ljava/lang/Object;
.source "GalleryScreenObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/GalleryScreenObserver$ScreenStateListener;,
        Lcom/zui/gallery/app/GalleryScreenObserver$ScreenBroadcastReceiver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mScreenReceiver:Lcom/zui/gallery/app/GalleryScreenObserver$ScreenBroadcastReceiver;

.field private mScreenStateListener:Lcom/zui/gallery/app/GalleryScreenObserver$ScreenStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/zui/gallery/app/GalleryScreenObserver;->mContext:Landroid/content/Context;

    .line 17
    new-instance p1, Lcom/zui/gallery/app/GalleryScreenObserver$ScreenBroadcastReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/zui/gallery/app/GalleryScreenObserver$ScreenBroadcastReceiver;-><init>(Lcom/zui/gallery/app/GalleryScreenObserver;Lcom/zui/gallery/app/GalleryScreenObserver$1;)V

    iput-object p1, p0, Lcom/zui/gallery/app/GalleryScreenObserver;->mScreenReceiver:Lcom/zui/gallery/app/GalleryScreenObserver$ScreenBroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/app/GalleryScreenObserver;)Lcom/zui/gallery/app/GalleryScreenObserver$ScreenStateListener;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/zui/gallery/app/GalleryScreenObserver;->mScreenStateListener:Lcom/zui/gallery/app/GalleryScreenObserver$ScreenStateListener;

    return-object p0
.end method

.method private getScreenState()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryScreenObserver;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "power"

    .line 39
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 40
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryScreenObserver;->mScreenStateListener:Lcom/zui/gallery/app/GalleryScreenObserver$ScreenStateListener;

    if-eqz v0, :cond_2

    .line 42
    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryScreenObserver$ScreenStateListener;->onScreenOn()V

    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryScreenObserver;->mScreenStateListener:Lcom/zui/gallery/app/GalleryScreenObserver$ScreenStateListener;

    if-eqz v0, :cond_2

    .line 46
    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryScreenObserver$ScreenStateListener;->onScreenOff()V

    :cond_2
    :goto_0
    return-void
.end method

.method private registerListener()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryScreenObserver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/zui/gallery/app/GalleryScreenObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zui/gallery/app/GalleryScreenObserver;->mScreenReceiver:Lcom/zui/gallery/app/GalleryScreenObserver$ScreenBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private unregisterListener()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryScreenObserver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 63
    iget-object v1, p0, Lcom/zui/gallery/app/GalleryScreenObserver;->mScreenReceiver:Lcom/zui/gallery/app/GalleryScreenObserver$ScreenBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public shutdownObserver()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/zui/gallery/app/GalleryScreenObserver;->unregisterListener()V

    return-void
.end method

.method public startObserver(Lcom/zui/gallery/app/GalleryScreenObserver$ScreenStateListener;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/zui/gallery/app/GalleryScreenObserver;->mScreenStateListener:Lcom/zui/gallery/app/GalleryScreenObserver$ScreenStateListener;

    .line 22
    invoke-direct {p0}, Lcom/zui/gallery/app/GalleryScreenObserver;->registerListener()V

    .line 23
    invoke-direct {p0}, Lcom/zui/gallery/app/GalleryScreenObserver;->getScreenState()V

    return-void
.end method
