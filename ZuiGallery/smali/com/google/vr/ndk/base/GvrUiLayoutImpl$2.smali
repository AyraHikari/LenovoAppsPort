.class Lcom/google/vr/ndk/base/GvrUiLayoutImpl$2;
.super Ljava/lang/Object;
.source "GvrUiLayoutImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->createDefaultCloseButtonListener(Landroid/content/Context;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$homeIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$activity",
            "val$homeIntent"
        }
    .end annotation

    .line 317
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$2;->val$homeIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$2;->val$homeIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 321
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
