.class Lcom/zui/gallery/app/PhotoDataAdapter$2;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/PhotoDataAdapter;->fireDataChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/PhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/PhotoDataAdapter;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$2;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter$2;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$300(Lcom/zui/gallery/app/PhotoDataAdapter;)Lcom/zui/gallery/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/PhotoView;->notifyCurrent()V

    return-void
.end method
