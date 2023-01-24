.class public Lcom/zui/gallery/ui/DetailsAddressResolver;
.super Ljava/lang/Object;
.source "DetailsAddressResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/DetailsAddressResolver$AddressResolvingListener;,
        Lcom/zui/gallery/ui/DetailsAddressResolver$AddressLookupJob;
    }
.end annotation


# instance fields
.field private mAddressLookupJob:Lcom/zui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/Future<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/app/Activity;

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Lcom/zui/gallery/ui/DetailsAddressResolver$AddressResolvingListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/zui/gallery/ui/DetailsAddressResolver;->mContext:Landroid/app/Activity;

    .line 65
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/zui/gallery/ui/DetailsAddressResolver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/ui/DetailsAddressResolver;)Landroid/app/Activity;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/zui/gallery/ui/DetailsAddressResolver;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$102(Lcom/zui/gallery/ui/DetailsAddressResolver;Lcom/zui/gallery/util/Future;)Lcom/zui/gallery/util/Future;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/zui/gallery/ui/DetailsAddressResolver;->mAddressLookupJob:Lcom/zui/gallery/util/Future;

    return-object p1
.end method

.method static synthetic access$200(Lcom/zui/gallery/ui/DetailsAddressResolver;Landroid/location/Address;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/DetailsAddressResolver;->updateLocation(Landroid/location/Address;)V

    return-void
.end method

.method static synthetic access$300(Lcom/zui/gallery/ui/DetailsAddressResolver;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/zui/gallery/ui/DetailsAddressResolver;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private updateLocation(Landroid/location/Address;)V
    .locals 13

    if-eqz p1, :cond_8

    .line 91
    iget-object v0, p0, Lcom/zui/gallery/ui/DetailsAddressResolver;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 92
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 93
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0x8

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/16 v8, 0x9

    const/4 v9, 0x4

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v1, :cond_0

    new-array v1, v8, [Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v12

    .line 99
    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v11

    .line 100
    invoke-virtual {p1}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v10

    .line 101
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    .line 102
    invoke-virtual {p1}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v9

    .line 103
    invoke-virtual {p1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    .line 104
    invoke-virtual {p1}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 105
    invoke-virtual {p1}, Landroid/location/Address;->getPremises()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 106
    invoke-virtual {p1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    goto :goto_0

    :cond_0
    new-array v1, v8, [Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v12

    .line 111
    invoke-virtual {p1}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v11

    .line 112
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v10

    .line 113
    invoke-virtual {p1}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    .line 114
    invoke-virtual {p1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v9

    .line 115
    invoke-virtual {p1}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    .line 116
    invoke-virtual {p1}, Landroid/location/Address;->getPremises()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 117
    invoke-virtual {p1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 118
    invoke-virtual {p1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    .line 123
    :goto_0
    array-length p1, v1

    move v3, v12

    :goto_1
    if-ge v3, p1, :cond_2

    aget-object v4, v1, v3

    if-eqz v4, :cond_1

    .line 125
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 126
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 130
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 131
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 132
    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [Ljava/lang/String;

    :cond_3
    const-string p1, ""

    move v2, v12

    .line 137
    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_7

    .line 138
    aget-object v3, v1, v2

    if-eqz v3, :cond_6

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    .line 140
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 143
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v1, v2

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    new-array v1, v10, [Ljava/lang/Object;

    .line 145
    invoke-static {v0, v9}, Lcom/zui/gallery/ui/DetailsHelper;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v12

    aput-object p1, v1, v11

    const-string p1, "%s : %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 147
    iget-object v0, p0, Lcom/zui/gallery/ui/DetailsAddressResolver;->mListener:Lcom/zui/gallery/ui/DetailsAddressResolver$AddressResolvingListener;

    invoke-interface {v0, p1}, Lcom/zui/gallery/ui/DetailsAddressResolver$AddressResolvingListener;->onAddressAvailable(Ljava/lang/String;)V

    :cond_8
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/zui/gallery/ui/DetailsAddressResolver;->mAddressLookupJob:Lcom/zui/gallery/util/Future;

    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0}, Lcom/zui/gallery/util/Future;->cancel()V

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/zui/gallery/ui/DetailsAddressResolver;->mAddressLookupJob:Lcom/zui/gallery/util/Future;

    :cond_0
    return-void
.end method

.method public resolveAddress([DLcom/zui/gallery/ui/DetailsAddressResolver$AddressResolvingListener;)Ljava/lang/String;
    .locals 3

    .line 69
    iput-object p2, p0, Lcom/zui/gallery/ui/DetailsAddressResolver;->mListener:Lcom/zui/gallery/ui/DetailsAddressResolver$AddressResolvingListener;

    .line 70
    iget-object p2, p0, Lcom/zui/gallery/ui/DetailsAddressResolver;->mContext:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getThreadPool()Lcom/zui/gallery/util/ThreadPool;

    move-result-object p2

    new-instance v0, Lcom/zui/gallery/ui/DetailsAddressResolver$AddressLookupJob;

    invoke-direct {v0, p0, p1}, Lcom/zui/gallery/ui/DetailsAddressResolver$AddressLookupJob;-><init>(Lcom/zui/gallery/ui/DetailsAddressResolver;[D)V

    new-instance v1, Lcom/zui/gallery/ui/DetailsAddressResolver$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/ui/DetailsAddressResolver$1;-><init>(Lcom/zui/gallery/ui/DetailsAddressResolver;)V

    invoke-virtual {p2, v0, v1}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/ui/DetailsAddressResolver;->mAddressLookupJob:Lcom/zui/gallery/util/Future;

    const/4 p2, 0x0

    .line 86
    aget-wide v0, p1, p2

    const/4 p2, 0x1

    aget-wide p1, p1, p2

    const-string v2, "(%f,%f)"

    invoke-static {v2, v0, v1, p1, p2}, Lcom/zui/gallery/util/GalleryUtils;->formatLatitudeLongitude(Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
