.class Lcom/zui/gallery/jobscheduler/SyncTrashTask$1$1;
.super Ljava/lang/Object;
.source "SyncTrashTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/jobscheduler/SyncTrashTask$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/jobscheduler/SyncTrashTask$1;


# direct methods
.method constructor <init>(Lcom/zui/gallery/jobscheduler/SyncTrashTask$1;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/zui/gallery/jobscheduler/SyncTrashTask$1$1;->this$1:Lcom/zui/gallery/jobscheduler/SyncTrashTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string/jumbo v0, "wangcan"

    const-string v1, "album albumId delete success ."

    .line 50
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
