.class Lcom/zui/gallery/ui/DetailsAddressResolver$1$1;
.super Ljava/lang/Object;
.source "DetailsAddressResolver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/ui/DetailsAddressResolver$1;->onFutureDone(Lcom/zui/gallery/util/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/ui/DetailsAddressResolver$1;

.field final synthetic val$future:Lcom/zui/gallery/util/Future;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/DetailsAddressResolver$1;Lcom/zui/gallery/util/Future;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/zui/gallery/ui/DetailsAddressResolver$1$1;->this$1:Lcom/zui/gallery/ui/DetailsAddressResolver$1;

    iput-object p2, p0, Lcom/zui/gallery/ui/DetailsAddressResolver$1$1;->val$future:Lcom/zui/gallery/util/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/zui/gallery/ui/DetailsAddressResolver$1$1;->this$1:Lcom/zui/gallery/ui/DetailsAddressResolver$1;

    iget-object v0, v0, Lcom/zui/gallery/ui/DetailsAddressResolver$1;->this$0:Lcom/zui/gallery/ui/DetailsAddressResolver;

    iget-object v1, p0, Lcom/zui/gallery/ui/DetailsAddressResolver$1$1;->val$future:Lcom/zui/gallery/util/Future;

    invoke-interface {v1}, Lcom/zui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-static {v0, v1}, Lcom/zui/gallery/ui/DetailsAddressResolver;->access$200(Lcom/zui/gallery/ui/DetailsAddressResolver;Landroid/location/Address;)V

    return-void
.end method
