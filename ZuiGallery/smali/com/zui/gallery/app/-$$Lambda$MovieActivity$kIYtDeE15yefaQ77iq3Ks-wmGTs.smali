.class public final synthetic Lcom/zui/gallery/app/-$$Lambda$MovieActivity$kIYtDeE15yefaQ77iq3Ks-wmGTs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lcom/zui/gallery/app/MovieActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/gallery/app/MovieActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/app/-$$Lambda$MovieActivity$kIYtDeE15yefaQ77iq3Ks-wmGTs;->f$0:Lcom/zui/gallery/app/MovieActivity;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    iget-object v0, p0, Lcom/zui/gallery/app/-$$Lambda$MovieActivity$kIYtDeE15yefaQ77iq3Ks-wmGTs;->f$0:Lcom/zui/gallery/app/MovieActivity;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/app/MovieActivity;->lambda$resetTitleBarMargin$0$MovieActivity(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
