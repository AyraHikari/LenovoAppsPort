.class public Lcom/zui/gallery/util/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# static fields
.field private static toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized showToast(Landroid/content/Context;I)V
    .locals 2

    const-class v0, Lcom/zui/gallery/util/ToastUtil;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/zui/gallery/util/ToastUtil;->toast:Landroid/widget/Toast;

    if-eqz v1, :cond_0

    .line 24
    sget-object v1, Lcom/zui/gallery/util/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    :cond_0
    const/4 v1, 0x0

    .line 26
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/zui/gallery/util/ToastUtil;->toast:Landroid/widget/Toast;

    .line 29
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/zui/gallery/util/ToastUtil;

    monitor-enter v0

    .line 12
    :try_start_0
    sget-object v1, Lcom/zui/gallery/util/ToastUtil;->toast:Landroid/widget/Toast;

    if-eqz v1, :cond_0

    .line 13
    sget-object v1, Lcom/zui/gallery/util/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    :cond_0
    const/4 v1, 0x0

    .line 15
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/zui/gallery/util/ToastUtil;->toast:Landroid/widget/Toast;

    .line 18
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
