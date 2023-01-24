.class Lcom/zui/gallery/app/GalleryScreenObserver$ScreenBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GalleryScreenObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/GalleryScreenObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenBroadcastReceiver"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field final synthetic this$0:Lcom/zui/gallery/app/GalleryScreenObserver;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/app/GalleryScreenObserver;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/zui/gallery/app/GalleryScreenObserver$ScreenBroadcastReceiver;->this$0:Lcom/zui/gallery/app/GalleryScreenObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lcom/zui/gallery/app/GalleryScreenObserver$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/GalleryScreenObserver;Lcom/zui/gallery/app/GalleryScreenObserver$1;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/GalleryScreenObserver$ScreenBroadcastReceiver;-><init>(Lcom/zui/gallery/app/GalleryScreenObserver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/GalleryScreenObserver$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    const-string p2, "android.intent.action.SCREEN_ON"

    .line 73
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/zui/gallery/app/GalleryScreenObserver$ScreenBroadcastReceiver;->this$0:Lcom/zui/gallery/app/GalleryScreenObserver;

    invoke-static {p1}, Lcom/zui/gallery/app/GalleryScreenObserver;->access$100(Lcom/zui/gallery/app/GalleryScreenObserver;)Lcom/zui/gallery/app/GalleryScreenObserver$ScreenStateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryScreenObserver$ScreenStateListener;->onScreenOn()V

    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/GalleryScreenObserver$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 76
    iget-object p1, p0, Lcom/zui/gallery/app/GalleryScreenObserver$ScreenBroadcastReceiver;->this$0:Lcom/zui/gallery/app/GalleryScreenObserver;

    invoke-static {p1}, Lcom/zui/gallery/app/GalleryScreenObserver;->access$100(Lcom/zui/gallery/app/GalleryScreenObserver;)Lcom/zui/gallery/app/GalleryScreenObserver$ScreenStateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryScreenObserver$ScreenStateListener;->onScreenOff()V

    goto :goto_0

    .line 77
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/GalleryScreenObserver$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 78
    iget-object p1, p0, Lcom/zui/gallery/app/GalleryScreenObserver$ScreenBroadcastReceiver;->this$0:Lcom/zui/gallery/app/GalleryScreenObserver;

    invoke-static {p1}, Lcom/zui/gallery/app/GalleryScreenObserver;->access$100(Lcom/zui/gallery/app/GalleryScreenObserver;)Lcom/zui/gallery/app/GalleryScreenObserver$ScreenStateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryScreenObserver$ScreenStateListener;->onUserPresent()V

    :cond_2
    :goto_0
    return-void
.end method
