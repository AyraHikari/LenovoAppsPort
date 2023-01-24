.class Lcom/zui/gallery/filtershow/FilterShowActivity$13;
.super Ljava/lang/Object;
.source "FilterShowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/FilterShowActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

.field final synthetic val$newConfig:Landroid/content/res/Configuration;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/FilterShowActivity;Landroid/content/res/Configuration;)V
    .locals 0

    .line 3067
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$13;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$13;->val$newConfig:Landroid/content/res/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3070
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$13;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$13;->val$newConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method
