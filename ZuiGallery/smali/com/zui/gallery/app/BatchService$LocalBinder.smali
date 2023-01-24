.class public Lcom/zui/gallery/app/BatchService$LocalBinder;
.super Landroid/os/Binder;
.source "BatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/BatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/BatchService;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/BatchService;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/zui/gallery/app/BatchService$LocalBinder;->this$0:Lcom/zui/gallery/app/BatchService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/zui/gallery/app/BatchService;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/zui/gallery/app/BatchService$LocalBinder;->this$0:Lcom/zui/gallery/app/BatchService;

    return-object v0
.end method
