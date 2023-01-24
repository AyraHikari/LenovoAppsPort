.class Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;
.super Ljava/lang/Object;
.source "GvrUiLayoutImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/GvrUiLayoutImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CloseButtonListenerWrapper"
.end annotation


# instance fields
.field private activeCloseButtonListener:Ljava/lang/Runnable;

.field private final context:Landroid/content/Context;

.field private final defaultCloseButtonListener:Ljava/lang/Runnable;

.field private invokingCloseButton:Z

.field private final passiveCloseButtonListener:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "passiveCloseButtonListener",
            "daydreamUtils"
        }
    .end annotation

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 353
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;->invokingCloseButton:Z

    .line 357
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;->context:Landroid/content/Context;

    .line 358
    iput-object p2, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;->passiveCloseButtonListener:Ljava/lang/Runnable;

    .line 363
    invoke-static {p1, p3}, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->access$000(Landroid/content/Context;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;->defaultCloseButtonListener:Ljava/lang/Runnable;

    .line 364
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;->activeCloseButtonListener:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 371
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;->invokingCloseButton:Z

    const-string v1, "GvrUiLayoutImpl"

    if-eqz v0, :cond_1

    const-string v0, "GVR close behavior invoked recursively."

    .line 372
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/vr/cardboard/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void

    :cond_1
    const-string v0, "GVR close behavior invoked."

    .line 380
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 381
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;->invokingCloseButton:Z

    const/4 v0, 0x0

    .line 385
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;->passiveCloseButtonListener:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 386
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;->passiveCloseButtonListener:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 388
    :cond_2
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;->activeCloseButtonListener:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 389
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;->activeCloseButtonListener:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    :cond_3
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;->invokingCloseButton:Z

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;->invokingCloseButton:Z

    throw v1
.end method

.method public setClientCloseButtonListener(Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 398
    :cond_0
    iget-object p1, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;->defaultCloseButtonListener:Ljava/lang/Runnable;

    :goto_0
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;->activeCloseButtonListener:Ljava/lang/Runnable;

    return-void
.end method
