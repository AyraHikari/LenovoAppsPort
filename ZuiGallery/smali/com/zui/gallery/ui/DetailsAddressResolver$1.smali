.class Lcom/zui/gallery/ui/DetailsAddressResolver$1;
.super Ljava/lang/Object;
.source "DetailsAddressResolver.java"

# interfaces
.implements Lcom/zui/gallery/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/ui/DetailsAddressResolver;->resolveAddress([DLcom/zui/gallery/ui/DetailsAddressResolver$AddressResolvingListener;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/gallery/util/FutureListener<",
        "Landroid/location/Address;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/DetailsAddressResolver;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/DetailsAddressResolver;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/zui/gallery/ui/DetailsAddressResolver$1;->this$0:Lcom/zui/gallery/ui/DetailsAddressResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/zui/gallery/util/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/util/Future<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/zui/gallery/ui/DetailsAddressResolver$1;->this$0:Lcom/zui/gallery/ui/DetailsAddressResolver;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/gallery/ui/DetailsAddressResolver;->access$102(Lcom/zui/gallery/ui/DetailsAddressResolver;Lcom/zui/gallery/util/Future;)Lcom/zui/gallery/util/Future;

    .line 76
    invoke-interface {p1}, Lcom/zui/gallery/util/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/zui/gallery/ui/DetailsAddressResolver$1;->this$0:Lcom/zui/gallery/ui/DetailsAddressResolver;

    invoke-static {v0}, Lcom/zui/gallery/ui/DetailsAddressResolver;->access$300(Lcom/zui/gallery/ui/DetailsAddressResolver;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/ui/DetailsAddressResolver$1$1;

    invoke-direct {v1, p0, p1}, Lcom/zui/gallery/ui/DetailsAddressResolver$1$1;-><init>(Lcom/zui/gallery/ui/DetailsAddressResolver$1;Lcom/zui/gallery/util/Future;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
