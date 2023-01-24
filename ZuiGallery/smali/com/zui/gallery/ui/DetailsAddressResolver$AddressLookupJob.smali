.class Lcom/zui/gallery/ui/DetailsAddressResolver$AddressLookupJob;
.super Ljava/lang/Object;
.source "DetailsAddressResolver.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/DetailsAddressResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddressLookupJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/gallery/util/ThreadPool$Job<",
        "Landroid/location/Address;",
        ">;"
    }
.end annotation


# instance fields
.field private mLatlng:[D

.field final synthetic this$0:Lcom/zui/gallery/ui/DetailsAddressResolver;


# direct methods
.method protected constructor <init>(Lcom/zui/gallery/ui/DetailsAddressResolver;[D)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/zui/gallery/ui/DetailsAddressResolver$AddressLookupJob;->this$0:Lcom/zui/gallery/ui/DetailsAddressResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/zui/gallery/ui/DetailsAddressResolver$AddressLookupJob;->mLatlng:[D

    return-void
.end method


# virtual methods
.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/location/Address;
    .locals 6

    .line 54
    new-instance v0, Lcom/zui/gallery/util/ReverseGeocoder;

    iget-object p1, p0, Lcom/zui/gallery/ui/DetailsAddressResolver$AddressLookupJob;->this$0:Lcom/zui/gallery/ui/DetailsAddressResolver;

    invoke-static {p1}, Lcom/zui/gallery/ui/DetailsAddressResolver;->access$000(Lcom/zui/gallery/ui/DetailsAddressResolver;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zui/gallery/util/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    .line 55
    iget-object p1, p0, Lcom/zui/gallery/ui/DetailsAddressResolver$AddressLookupJob;->mLatlng:[D

    const/4 v1, 0x0

    aget-wide v1, p1, v1

    const/4 v3, 0x1

    aget-wide v3, p1, v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/DetailsAddressResolver$AddressLookupJob;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/location/Address;

    move-result-object p1

    return-object p1
.end method
