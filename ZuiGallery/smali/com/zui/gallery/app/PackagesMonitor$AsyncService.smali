.class public Lcom/zui/gallery/app/PackagesMonitor$AsyncService;
.super Landroid/app/IntentService;
.source "PackagesMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/PackagesMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "GalleryPackagesMonitorAsync"

    .line 45
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 0

    .line 50
    invoke-static {p0, p1}, Lcom/zui/gallery/app/PackagesMonitor;->access$000(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
