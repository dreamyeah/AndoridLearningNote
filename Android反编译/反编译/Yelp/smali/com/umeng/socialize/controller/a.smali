.class public Lcom/umeng/socialize/controller/a;
.super Ljava/lang/Object;
.source "AppPlatformFactory.java"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/socialize/controller/a;->a:Ljava/util/Map;

    .line 48
    sget-object v0, Lcom/umeng/socialize/controller/a;->a:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string v2, "com.facebook.katana"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/umeng/socialize/controller/a;->a:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TWITTER:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string v2, "com.twitter.android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/umeng/socialize/controller/a;->a:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GOOGLEPLUS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string v2, "com.google.android.apps.plus"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 143
    const/high16 v0, 0x1020

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 146
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 147
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 149
    sget-object v0, Lcom/umeng/socialize/controller/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v2

    .line 157
    :goto_0
    if-eqz v1, :cond_2

    .line 158
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.google.android.apps.plus.phone.HomeActivity"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    :goto_1
    return-object p2

    .line 150
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 151
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    const-string v1, "com.umeng.socialize"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Lcom/umeng/socialize/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    move-object p2, v2

    .line 166
    goto :goto_1
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)Landroid/content/Intent;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    invoke-static {p0, p1, p2}, Lcom/umeng/socialize/controller/a;->b(Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)Lcom/umeng/socialize/bean/CustomPlatform;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    sget-object v0, Lcom/umeng/socialize/controller/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 64
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object p2

    .line 68
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/umeng/socialize/controller/a;->b(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)Lcom/umeng/socialize/bean/CustomPlatform;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    const-string v1, "image/*;text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    :cond_0
    instance-of v1, p2, Lcom/umeng/socialize/media/UMImage;

    if-eqz v1, :cond_1

    .line 185
    check-cast p2, Lcom/umeng/socialize/media/UMImage;

    .line 186
    invoke-virtual {p2}, Lcom/umeng/socialize/media/UMImage;->getImageCachePath()Ljava/lang/String;

    move-result-object v1

    .line 187
    if-eqz v1, :cond_1

    .line 188
    invoke-static {p0, v1}, Lcom/umeng/socialize/utils/SocializeUtils;->insertImage(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 189
    if-eqz v1, :cond_1

    .line 190
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 191
    sget-object v2, Lcom/umeng/socialize/utils/SocializeUtils;->deleteUris:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_1
    return-object v0
.end method

.method private static b(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)Lcom/umeng/socialize/bean/CustomPlatform;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    const-string v0, "umeng_socialize_google"

    .line 85
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p1, v1, :cond_1

    .line 86
    const-string v0, "umeng_socialize_facebook"

    .line 91
    :cond_0
    :goto_0
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    invoke-static {p0, v1, v0}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 92
    new-instance v1, Lcom/umeng/socialize/bean/CustomPlatform;

    invoke-virtual {p1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/umeng/socialize/bean/CustomPlatform;-><init>(Ljava/lang/String;I)V

    .line 93
    iput v0, v1, Lcom/umeng/socialize/bean/CustomPlatform;->mGrayIcon:I

    .line 94
    new-instance v0, Lcom/umeng/socialize/controller/b;

    invoke-direct {v0, p1, p2}, Lcom/umeng/socialize/controller/b;-><init>(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/umeng/socialize/bean/CustomPlatform;->mClickListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$OnSnsPlatformClickListener;

    .line 130
    return-object v1

    .line 87
    :cond_1
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TWITTER:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p1, v1, :cond_0

    .line 88
    const-string v0, "umeng_socialize_twitter"

    goto :goto_0
.end method
