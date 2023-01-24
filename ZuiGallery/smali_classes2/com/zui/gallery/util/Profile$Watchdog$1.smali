.class Lcom/zui/gallery/util/Profile$Watchdog$1;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/util/Profile$Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/util/Profile$Watchdog;


# direct methods
.method constructor <init>(Lcom/zui/gallery/util/Profile$Watchdog;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/zui/gallery/util/Profile$Watchdog$1;->this$0:Lcom/zui/gallery/util/Profile$Watchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/zui/gallery/util/Profile$Watchdog$1;->this$0:Lcom/zui/gallery/util/Profile$Watchdog;

    monitor-enter v0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/util/Profile$Watchdog$1;->this$0:Lcom/zui/gallery/util/Profile$Watchdog;

    invoke-static {v1}, Lcom/zui/gallery/util/Profile$Watchdog;->access$000(Lcom/zui/gallery/util/Profile$Watchdog;)V

    .line 64
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
