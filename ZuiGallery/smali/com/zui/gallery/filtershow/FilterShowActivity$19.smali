.class Lcom/zui/gallery/filtershow/FilterShowActivity$19;
.super Landroid/database/ContentObserver;
.source "FilterShowActivity.java"


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
.method constructor <init>(Lcom/zui/gallery/filtershow/FilterShowActivity;Landroid/os/Handler;)V
    .locals 0

    .line 3682
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$19;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 3685
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$19;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/gallery/util/BrightnessTools;->isAutoBrightness(Landroid/content/ContentResolver;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3686
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$19;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/gallery/util/BrightnessTools;->getScreenBrightness(Landroid/content/ContentResolver;)I

    move-result p1

    .line 3687
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$19;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v0, p1}, Lcom/zui/gallery/util/BrightnessTools;->setBrightness(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method
