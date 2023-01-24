.class Lcom/zui/gallery/filtershow/FilterShowActivity$1;
.super Ljava/lang/Object;
.source "FilterShowActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/FilterShowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/FilterShowActivity;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$1;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 360
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$1;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    check-cast p2, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$LocalBinder;

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$LocalBinder;->getService()Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$002(Lcom/zui/gallery/filtershow/FilterShowActivity;Lcom/zui/gallery/filtershow/pipeline/ProcessingService;)Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    .line 361
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$1;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$000(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$1;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    iget-object p2, p2, Lcom/zui/gallery/filtershow/FilterShowActivity;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->setNvsEffectSdkContext(Lcom/meicam/effect/sdk/NvsEffectSdkContext;)V

    .line 362
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$1;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$000(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$1;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    iget-object p2, p2, Lcom/zui/gallery/filtershow/FilterShowActivity;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->setNvsEffectRenderCore(Lcom/meicam/effect/sdk/NvsEffectRenderCore;)V

    .line 363
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$1;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$000(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$1;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->setFiltershowActivity(Lcom/zui/gallery/filtershow/FilterShowActivity;)V

    .line 364
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$1;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$000(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->onStart()V

    .line 365
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$1;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->mBoundServiceStart:Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 375
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$1;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$002(Lcom/zui/gallery/filtershow/FilterShowActivity;Lcom/zui/gallery/filtershow/pipeline/ProcessingService;)Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    return-void
.end method
