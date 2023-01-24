.class public abstract Lcom/zui/gallery/banner/BaseActivity;
.super Lzui/appcompat/app/AppCompatActivity;
.source "BaseActivity.java"


# static fields
.field public static final PRIVACY_REQUEST_CODE:I = 0x22b8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isRegisterReceiver:Z

.field public mActivity:Lcom/zui/gallery/banner/BaseActivity;

.field private mBuilder:Lzui/app/MessageDialog$Builder;

.field private mHomeReceiver:Lcom/zui/gallery/banner/MonitorHomeReceiver;

.field private mMessageDialog:Lzui/app/MessageDialog;

.field private mProgressDialogX:Lzui/app/ProgressDialogX;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/zui/gallery/banner/BaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/banner/BaseActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lzui/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/zui/gallery/banner/BaseActivity;->isRegisterReceiver:Z

    return-void
.end method

.method private isWantActivity()Z
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/zui/gallery/banner/BaseActivity;->mActivity:Lcom/zui/gallery/banner/BaseActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 130
    :cond_0
    instance-of v2, v0, Lcom/zui/gallery/banner/FileListActivity;

    if-nez v2, :cond_1

    instance-of v2, v0, Lcom/zui/gallery/banner/FileListDetailsActivity;

    if-nez v2, :cond_1

    instance-of v0, v0, Lcom/zui/gallery/banner/MediaPlayerActivity;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method static synthetic lambda$onActivityResult$0(Landroid/app/Activity;Lcom/zui/gallery/banner/MonitorHomeReceiver;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 147
    invoke-virtual {p1, p0}, Lcom/zui/gallery/banner/MonitorHomeReceiver;->setRecentApps(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onActivityResult$1(Landroid/app/Activity;Lcom/zui/gallery/banner/MonitorHomeReceiver;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 157
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private onCreate()V
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/zui/gallery/banner/BaseActivity;->registerForBroadcast()V

    return-void
.end method

.method private uiModeColor()V
    .locals 1

    .line 167
    invoke-static {p0}, Lcom/zui/gallery/util/DisplayPropertyUtils;->setUiModeColor(Landroid/app/Activity;)V

    .line 168
    invoke-virtual {p0}, Lcom/zui/gallery/banner/BaseActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    return-void
.end method


# virtual methods
.method public callUpVerification()V
    .locals 2

    .line 114
    invoke-direct {p0}, Lcom/zui/gallery/banner/BaseActivity;->isWantActivity()Z

    move-result v0

    .line 115
    iget-object v1, p0, Lcom/zui/gallery/banner/BaseActivity;->mHomeReceiver:Lcom/zui/gallery/banner/MonitorHomeReceiver;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {v1}, Lcom/zui/gallery/banner/MonitorHomeReceiver;->isRecentApps()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/zui/gallery/banner/BaseActivity;->mHomeReceiver:Lcom/zui/gallery/banner/MonitorHomeReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/banner/MonitorHomeReceiver;->setRecentApps(Z)V

    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.lenovo.privacyspace.verification"

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x22b8

    .line 122
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/banner/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public createDialogBuilder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/zui/gallery/banner/BaseActivity;->mBuilder:Lzui/app/MessageDialog$Builder;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lzui/app/MessageDialog$Builder;

    iget-object v1, p0, Lcom/zui/gallery/banner/BaseActivity;->mActivity:Lcom/zui/gallery/banner/BaseActivity;

    invoke-static {v1}, Lcom/zui/gallery/util/GalleryUtils;->getCurrentMessageDialogTheme(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lzui/app/MessageDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 185
    invoke-virtual {v0, v1}, Lzui/app/MessageDialog$Builder;->setMessageDialogType(I)Lzui/app/MessageDialog$Builder;

    move-result-object v0

    const v1, 0x7f100068

    .line 186
    invoke-virtual {p0, v1}, Lcom/zui/gallery/banner/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/banner/BaseActivity$1;

    invoke-direct {v2, p0}, Lcom/zui/gallery/banner/BaseActivity$1;-><init>(Lcom/zui/gallery/banner/BaseActivity;)V

    invoke-virtual {v0, v1, v2}, Lzui/app/MessageDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/banner/BaseActivity;->mBuilder:Lzui/app/MessageDialog$Builder;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/banner/BaseActivity;->mBuilder:Lzui/app/MessageDialog$Builder;

    invoke-virtual {v0, p1}, Lzui/app/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;

    .line 195
    iget-object p1, p0, Lcom/zui/gallery/banner/BaseActivity;->mBuilder:Lzui/app/MessageDialog$Builder;

    new-instance v0, Lcom/zui/gallery/banner/BaseActivity$2;

    invoke-direct {v0, p0, p2}, Lcom/zui/gallery/banner/BaseActivity$2;-><init>(Lcom/zui/gallery/banner/BaseActivity;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lzui/app/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    .line 201
    iget-object p1, p0, Lcom/zui/gallery/banner/BaseActivity;->mBuilder:Lzui/app/MessageDialog$Builder;

    invoke-virtual {p1}, Lzui/app/MessageDialog$Builder;->create()Lzui/app/MessageDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/banner/BaseActivity;->mMessageDialog:Lzui/app/MessageDialog;

    .line 202
    invoke-virtual {p1}, Lzui/app/MessageDialog;->show()V

    return-void
.end method

.method public createProgressDialog(Ljava/lang/String;)V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/zui/gallery/banner/BaseActivity;->mProgressDialogX:Lzui/app/ProgressDialogX;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Lzui/app/ProgressDialogX;

    iget-object v1, p0, Lcom/zui/gallery/banner/BaseActivity;->mActivity:Lcom/zui/gallery/banner/BaseActivity;

    invoke-direct {v0, v1}, Lzui/app/ProgressDialogX;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/gallery/banner/BaseActivity;->mProgressDialogX:Lzui/app/ProgressDialogX;

    const/4 v1, 0x0

    .line 208
    invoke-virtual {v0, v1}, Lzui/app/ProgressDialogX;->setCancelable(Z)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/banner/BaseActivity;->mProgressDialogX:Lzui/app/ProgressDialogX;

    invoke-virtual {v0, p1}, Lzui/app/ProgressDialogX;->setMessage(Ljava/lang/CharSequence;)V

    .line 211
    iget-object p1, p0, Lcom/zui/gallery/banner/BaseActivity;->mProgressDialogX:Lzui/app/ProgressDialogX;

    invoke-virtual {p1}, Lzui/app/ProgressDialogX;->show()V

    return-void
.end method

.method public fullScreen(Z)V
    .locals 2

    .line 173
    invoke-virtual {p0}, Lcom/zui/gallery/banner/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void
.end method

.method protected abstract initData()V
.end method

.method protected abstract initView()V
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 137
    invoke-super {p0, p1, p2, p3}, Lzui/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 138
    sget-object p3, Lcom/zui/gallery/banner/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult , resultCode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0x22b8

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {}, Lcom/zui/gallery/banner/ActivityManageUtils;->getInstance()Lcom/zui/gallery/banner/ActivityManageUtils;

    move-result-object p1

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    .line 144
    invoke-virtual {p1}, Lcom/zui/gallery/banner/ActivityManageUtils;->get()Ljava/util/LinkedHashMap;

    move-result-object p1

    .line 145
    sget-object p2, Lcom/zui/gallery/banner/-$$Lambda$BaseActivity$8lp2ospEPwdXAImQYkNnHG_Hj-g;->INSTANCE:Lcom/zui/gallery/banner/-$$Lambda$BaseActivity$8lp2ospEPwdXAImQYkNnHG_Hj-g;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void

    :cond_1
    if-eq p2, p3, :cond_2

    .line 153
    invoke-virtual {p1}, Lcom/zui/gallery/banner/ActivityManageUtils;->get()Ljava/util/LinkedHashMap;

    move-result-object p1

    .line 154
    sget-object p2, Lcom/zui/gallery/banner/BaseActivity;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityResult activities == "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget-object p2, Lcom/zui/gallery/banner/-$$Lambda$BaseActivity$j1eSVrSbHJ-DkWaarthP_oAJbZE;->INSTANCE:Lcom/zui/gallery/banner/-$$Lambda$BaseActivity$j1eSVrSbHJ-DkWaarthP_oAJbZE;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lzui/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-direct {p0}, Lcom/zui/gallery/banner/BaseActivity;->uiModeColor()V

    .line 44
    invoke-virtual {p0}, Lcom/zui/gallery/banner/BaseActivity;->setLayoutResourceID()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/banner/BaseActivity;->setContentView(I)V

    .line 45
    iput-object p0, p0, Lcom/zui/gallery/banner/BaseActivity;->mActivity:Lcom/zui/gallery/banner/BaseActivity;

    .line 46
    invoke-virtual {p0}, Lcom/zui/gallery/banner/BaseActivity;->setLayoutResourceID()I

    move-result p1

    if-eqz p1, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/zui/gallery/banner/BaseActivity;->onCreate()V

    .line 48
    invoke-virtual {p0}, Lcom/zui/gallery/banner/BaseActivity;->initView()V

    .line 49
    invoke-virtual {p0}, Lcom/zui/gallery/banner/BaseActivity;->initData()V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 231
    invoke-super {p0}, Lzui/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 232
    iget-object v0, p0, Lcom/zui/gallery/banner/BaseActivity;->mBuilder:Lzui/app/MessageDialog$Builder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 233
    iput-object v1, p0, Lcom/zui/gallery/banner/BaseActivity;->mBuilder:Lzui/app/MessageDialog$Builder;

    .line 234
    iput-object v1, p0, Lcom/zui/gallery/banner/BaseActivity;->mMessageDialog:Lzui/app/MessageDialog;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/banner/BaseActivity;->mProgressDialogX:Lzui/app/ProgressDialogX;

    if-eqz v0, :cond_1

    .line 237
    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->dismiss()V

    .line 238
    iput-object v1, p0, Lcom/zui/gallery/banner/BaseActivity;->mProgressDialogX:Lzui/app/ProgressDialogX;

    .line 240
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/banner/BaseActivity;->unregisterForBroadcast()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 102
    invoke-super {p0}, Lzui/appcompat/app/AppCompatActivity;->onResume()V

    .line 103
    invoke-virtual {p0}, Lcom/zui/gallery/banner/BaseActivity;->callUpVerification()V

    .line 104
    sget-object v0, Lcom/zui/gallery/banner/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/banner/BaseActivity;->mActivity:Lcom/zui/gallery/banner/BaseActivity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 109
    invoke-super {p0}, Lzui/appcompat/app/AppCompatActivity;->onStop()V

    .line 110
    sget-object v0, Lcom/zui/gallery/banner/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/banner/BaseActivity;->mActivity:Lcom/zui/gallery/banner/BaseActivity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected processFiles(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public progressDialogDismiss()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/zui/gallery/banner/BaseActivity;->mProgressDialogX:Lzui/app/ProgressDialogX;

    if-nez v0, :cond_0

    return-void

    .line 218
    :cond_0
    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->dismiss()V

    return-void
.end method

.method public registerForBroadcast()V
    .locals 3

    .line 58
    sget-object v0, Lcom/zui/gallery/banner/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerForBroadcast  mHomeReceiver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/banner/BaseActivity;->mHomeReceiver:Lcom/zui/gallery/banner/MonitorHomeReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  isRegisterReceiver == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/zui/gallery/banner/BaseActivity;->isRegisterReceiver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/zui/gallery/banner/BaseActivity;->mHomeReceiver:Lcom/zui/gallery/banner/MonitorHomeReceiver;

    if-eqz v0, :cond_0

    return-void

    .line 63
    :cond_0
    iget-boolean v0, p0, Lcom/zui/gallery/banner/BaseActivity;->isRegisterReceiver:Z

    if-eqz v0, :cond_1

    return-void

    .line 66
    :cond_1
    invoke-direct {p0}, Lcom/zui/gallery/banner/BaseActivity;->isWantActivity()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/banner/BaseActivity;->mHomeReceiver:Lcom/zui/gallery/banner/MonitorHomeReceiver;

    if-nez v0, :cond_3

    .line 70
    new-instance v0, Lcom/zui/gallery/banner/MonitorHomeReceiver;

    invoke-direct {v0}, Lcom/zui/gallery/banner/MonitorHomeReceiver;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/banner/BaseActivity;->mHomeReceiver:Lcom/zui/gallery/banner/MonitorHomeReceiver;

    .line 72
    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/zui/gallery/banner/BaseActivity;->mHomeReceiver:Lcom/zui/gallery/banner/MonitorHomeReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/zui/gallery/banner/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/zui/gallery/banner/BaseActivity;->isRegisterReceiver:Z

    .line 75
    invoke-static {}, Lcom/zui/gallery/banner/ActivityManageUtils;->getInstance()Lcom/zui/gallery/banner/ActivityManageUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/banner/BaseActivity;->mActivity:Lcom/zui/gallery/banner/BaseActivity;

    iget-object v2, p0, Lcom/zui/gallery/banner/BaseActivity;->mHomeReceiver:Lcom/zui/gallery/banner/MonitorHomeReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/banner/ActivityManageUtils;->addActivity(Landroid/app/Activity;Lcom/zui/gallery/banner/MonitorHomeReceiver;)V

    return-void
.end method

.method protected abstract setLayoutResourceID()I
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/zui/gallery/banner/BaseActivity;->mActivity:Lcom/zui/gallery/banner/BaseActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public unregisterForBroadcast()V
    .locals 3

    .line 79
    sget-object v0, Lcom/zui/gallery/banner/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterForBroadcast  mHomeReceiver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/banner/BaseActivity;->mHomeReceiver:Lcom/zui/gallery/banner/MonitorHomeReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  isRegisterReceiver == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/zui/gallery/banner/BaseActivity;->isRegisterReceiver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-boolean v0, p0, Lcom/zui/gallery/banner/BaseActivity;->isRegisterReceiver:Z

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/banner/BaseActivity;->isWantActivity()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/banner/BaseActivity;->mHomeReceiver:Lcom/zui/gallery/banner/MonitorHomeReceiver;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, v1}, Lcom/zui/gallery/banner/MonitorHomeReceiver;->setRecentApps(Z)V

    .line 89
    iget-object v0, p0, Lcom/zui/gallery/banner/BaseActivity;->mHomeReceiver:Lcom/zui/gallery/banner/MonitorHomeReceiver;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/banner/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/zui/gallery/banner/BaseActivity;->mHomeReceiver:Lcom/zui/gallery/banner/MonitorHomeReceiver;

    .line 91
    iput-boolean v1, p0, Lcom/zui/gallery/banner/BaseActivity;->isRegisterReceiver:Z

    .line 93
    :cond_2
    invoke-static {}, Lcom/zui/gallery/banner/ActivityManageUtils;->getInstance()Lcom/zui/gallery/banner/ActivityManageUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/banner/BaseActivity;->mActivity:Lcom/zui/gallery/banner/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/banner/ActivityManageUtils;->removeActivity(Landroid/app/Activity;)V

    return-void
.end method
