.class public Lcom/zui/gallery/filtershow/pipeline/ProcessingService$LocalBinder;
.super Landroid/os/Binder;
.source "ProcessingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/pipeline/ProcessingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/filtershow/pipeline/ProcessingService;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$LocalBinder;->this$0:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/zui/gallery/filtershow/pipeline/ProcessingService;
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$LocalBinder;->this$0:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    return-object v0
.end method
